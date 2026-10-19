//! Native Cashu wallet over `cdk` — see [`super`] for scope and the wasm split.

use std::collections::HashMap;
use std::sync::Arc;
use std::time::{Duration, SystemTime, UNIX_EPOCH};

use anyhow::{anyhow, bail, Result};
use cdk::amount::SplitTarget;
use cdk::nuts::nut10::SpendingConditions;
use cdk::nuts::MeltQuoteState;
use cdk::nuts::{CurrencyUnit, KeySetInfo, MeltMethodSettings, PaymentMethod, Proof, Token};
use cdk::wallet::types::KeysetLoadPolicy;
use cdk::wallet::{MeltOutcome, PreparedMelt, ReceiveOptions, SendMemo, SendOptions, Wallet};
use cdk::Amount;
use cdk_sqlite::WalletSqliteDatabase;
use std::str::FromStr;

/// Everything the escrow flow needs a mint to support.
///
/// Checked once at connect rather than at the first failing operation: a seller
/// who funds a wallet at a mint that cannot do NUT-11 would only find out when
/// the escrow lock fails, with their sats already sitting at that mint.
#[derive(Debug, Clone, Default, PartialEq, Eq)]
pub struct MintCapabilities {
    /// NUT-07 — proof state check. Without it the wallet cannot tell a spent
    /// proof from a live one after an interrupted trade.
    pub nut07_state_check: bool,
    /// NUT-11 — P2PK spending conditions. The escrow lock *is* a P2PK secret.
    pub nut11_p2pk: bool,
    /// NUT-12 — DLEQ proofs, so a received token can be verified as genuinely
    /// issued by this mint rather than taken on trust.
    pub nut12_dleq: bool,
    /// A keyset denominated in `sat`. Mostro amounts are satoshis.
    pub has_sat_keyset: bool,
    /// NUT-05 — melt to a `bolt11` invoice in `sat`, and melting not
    /// `disabled`. What "send to Lightning" needs (phase C3b-1).
    ///
    /// **Optional, unlike the four above**: it is not part of
    /// [`Self::is_usable`]. An escrow never melts, so a mint without it still
    /// trades; the wallet screen hides "to Lightning" instead of refusing the
    /// mint.
    pub nut05_bolt11: bool,
    /// The smallest melt the mint accepts, in sats, when it states one.
    pub melt_min_sats: Option<u64>,
    /// The largest melt the mint accepts, in sats, when it states one.
    pub melt_max_sats: Option<u64>,
}

impl MintCapabilities {
    /// All four, or the mint is not one we can trade against.
    pub fn is_usable(&self) -> bool {
        self.nut07_state_check && self.nut11_p2pk && self.nut12_dleq && self.has_sat_keyset
    }

    /// Stable markers for what is missing. Rust does not translate; Dart maps
    /// these to localized strings.
    pub fn missing(&self) -> Vec<&'static str> {
        let mut missing = Vec::new();
        if !self.nut07_state_check {
            missing.push("nut07");
        }
        if !self.nut11_p2pk {
            missing.push("nut11");
        }
        if !self.nut12_dleq {
            missing.push("nut12");
        }
        if !self.has_sat_keyset {
            missing.push("sat_keyset");
        }
        missing
    }
}

/// What paying a Lightning invoice from the wallet costs, as quoted by the mint
/// and priced against the proofs the wallet would spend.
#[derive(Debug, Clone, PartialEq, Eq)]
pub struct MeltQuoteInfo {
    /// The mint's quote, to pay with [`CashuWallet::melt`].
    pub quote_id: String,
    /// What the invoice asks for.
    pub amount_sats: u64,
    /// The most the mint may spend on Lightning routing. What it does not
    /// spend comes back as change (NUT-08).
    pub fee_reserve_sats: u64,
    /// The mint's input fees: on the melt's inputs and, when the wallet's
    /// proofs do not add up to the exact amount, on the swap that makes them.
    pub input_fee_sats: u64,
    /// The most the payment can take from the balance:
    /// [`melt_max_total`] of the three above.
    pub max_total_sats: u64,
    /// When the mint stops honouring the quote, unix seconds.
    pub expiry_unix: u64,
}

/// How a melt the user confirmed ended.
#[derive(Debug, Clone, PartialEq, Eq)]
pub enum MeltOutcomeInfo {
    /// The invoice is paid.
    Paid {
        amount_sats: u64,
        /// What the payment cost beyond the invoice: input and swap fees plus
        /// the routing fee the mint kept.
        fee_paid_sats: u64,
    },
    /// The mint accepted the payment and is still routing it. The proofs stay
    /// reserved; [`CashuWallet::finalize_pending_melts`] settles them once
    /// the mint says how it ended.
    Pending,
}

/// A wallet bound to exactly one mint.
///
/// One mint is not a simplification to revisit later: the Mostro node pins the
/// mint for every escrow (§2 of the Cashu doc), so ecash at any other mint has
/// no counterparty to trade with.
pub struct CashuWallet {
    inner: Wallet,
    mint_url: String,
    capabilities: MintCapabilities,
}

/// Hand-written so a failed `connect` can be unwrapped in tests and logged
/// without pulling `cdk::Wallet` into the output — it holds the seed, and a
/// derived `Debug` would risk printing key material into a log.
impl std::fmt::Debug for CashuWallet {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.debug_struct("CashuWallet")
            .field("mint_url", &self.mint_url)
            .field("capabilities", &self.capabilities)
            .finish_non_exhaustive()
    }
}

impl CashuWallet {
    /// Open the local proof store, bind to `mint_url` and verify it is usable.
    ///
    /// `seed` is the identity's BIP-39 seed, so the ecash is recoverable from
    /// the words the user already backed up. `db_path` is the proof store's own
    /// SQLite file — never the app's, whose schema is unrelated and whose
    /// migrations must not run against `cdk`'s tables.
    ///
    /// **Errors** (stable markers): `CashuMintUnreachable` when the mint does
    /// not answer, `CashuMintUnusable` when it answers but lacks a required NUT
    /// or the `sat` keyset.
    pub async fn connect(
        mint_url: &str,
        seed: zeroize::Zeroizing<[u8; 64]>,
        db_path: &str,
    ) -> Result<Self> {
        let localstore = WalletSqliteDatabase::new(db_path)
            .await
            .map_err(|e| anyhow!("CashuStoreUnavailable: {e}"))?;

        let inner = Wallet::new(
            mint_url,
            CurrencyUnit::Sat,
            Arc::new(localstore),
            // cdk takes the seed by value; our copy is wiped on drop.
            *seed,
            // cdk's own default: keep roughly this many proofs per denomination
            // so an ordinary send rarely needs an extra swap round trip.
            None,
        )
        .map_err(|e| anyhow!("CashuWalletInit: {e}"))?;

        let capabilities = Self::probe(&inner).await?;
        if !capabilities.is_usable() {
            bail!("CashuMintUnusable: {}", capabilities.missing().join(","));
        }

        log::info!("[cashu] connected to {mint_url}");
        let wallet = Self {
            inner,
            mint_url: mint_url.to_string(),
            capabilities,
        };
        wallet.recover().await;
        Ok(wallet)
    }

    /// Finish or roll back what a previous session left half done at this
    /// mint: a send or melt whose proofs were reserved but never handed over,
    /// a swap or receive whose outputs were never stored, a melt whose
    /// Lightning payment was still in flight.
    ///
    /// Safe for escrow and exported tokens: cdk compensates only a send still
    /// in `ProofsReserved` — no token exists yet — and never revokes one in
    /// `TokenCreated` (`wallet/send/saga/resume.rs`, cdk 0.18.1). That
    /// reclaim stays C10's.
    ///
    /// **Best effort.** The mint has just proven usable, so a failure here is a
    /// round trip that did not come back: it is logged and the connect goes
    /// on. Whatever was not settled is still recorded as a saga and is tried
    /// again at the next connect.
    async fn recover(&self) {
        match self.inner.recover_incomplete_sagas().await {
            Ok(report) if report.is_empty() => {}
            Ok(report) => log::info!(
                "[cashu] recovered interrupted operations: {} completed, {} rolled back, {} still pending, {} failed",
                report.recovered,
                report.compensated,
                report.skipped,
                report.failed
            ),
            Err(e) => log::warn!("[cashu] recovering interrupted operations failed: {e}"),
        }
        if let Err(e) = self.finalize_pending_melts().await {
            log::warn!("[cashu] {e}");
        }
    }

    /// Ask the mint what it supports. Reachability is proven by the same call,
    /// so there is no separate ping.
    async fn probe(wallet: &Wallet) -> Result<MintCapabilities> {
        let info = wallet
            .fetch_mint_info()
            .await
            .map_err(|e| anyhow!("CashuMintUnreachable: {e}"))?
            .ok_or_else(|| anyhow!("CashuMintUnreachable: mint published no info"))?;

        // `Refresh`: the mint was just reached for its info, so ask it rather
        // than trust a keyset list the store kept from an earlier session. cdk
        // returns every keyset of the wallet's unit, rotated ones included, so
        // `active` has to be checked here.
        let keysets = wallet
            .keysets(KeysetLoadPolicy::Refresh)
            .await
            .map_err(|e| anyhow!("CashuMintUnreachable: {e}"))?;

        let melt = bolt11_sat_melt(&info.nuts.nut05);
        Ok(MintCapabilities {
            nut07_state_check: info.nuts.nut07.supported,
            nut11_p2pk: info.nuts.nut11.supported,
            nut12_dleq: info.nuts.nut12.supported,
            has_sat_keyset: keysets
                .iter()
                .any(|k| k.unit == CurrencyUnit::Sat && k.active == Some(true)),
            nut05_bolt11: melt.is_some(),
            melt_min_sats: melt.as_ref().and_then(|m| m.min_amount).map(u64::from),
            melt_max_sats: melt.as_ref().and_then(|m| m.max_amount).map(u64::from),
        })
    }

    /// The mint this wallet is bound to.
    pub fn mint_url(&self) -> &str {
        &self.mint_url
    }

    /// The underlying `cdk` wallet, for the escrow primitives in
    /// [`super::escrow`]. Crate-internal: everything outside this module goes
    /// through the methods above, so mint access stays in one place.
    pub(crate) fn inner(&self) -> &Wallet {
        &self.inner
    }

    /// The proofs inside a token.
    ///
    /// Needs the mint's keysets — a v4 token identifies its keyset by id — so
    /// this cannot be a free function on the token alone.
    ///
    /// Rotated keysets count: a token minted before a rotation is still ecash
    /// at this mint. That mirrors cdk's own (crate-private) `token_proofs`.
    pub(crate) async fn proofs_of(&self, token: &Token) -> Result<Vec<Proof>> {
        let keysets: Vec<KeySetInfo> = self
            .inner
            .keysets(KeysetLoadPolicy::default())
            .await
            .map_err(|e| anyhow!("CashuMintUnreachable: {e}"))?
            .into_iter()
            .map(|k| KeySetInfo {
                id: k.id,
                unit: k.unit,
                active: k.active.unwrap_or(false),
                input_fee_ppk: k.input_fee_ppk,
                final_expiry: k.final_expiry,
            })
            .collect();
        token
            .proofs(&keysets)
            .map_err(|e| anyhow!("InvalidEscrowToken: unreadable proofs ({e})"))
    }

    /// What the mint advertised at connect time.
    pub fn capabilities(&self) -> &MintCapabilities {
        &self.capabilities
    }

    /// Spendable balance in satoshis.
    pub async fn balance(&self) -> Result<u64> {
        let amount = self
            .inner
            .total_balance()
            .await
            .map_err(|e| anyhow!("CashuBalance: {e}"))?;
        Ok(u64::from(amount))
    }

    /// Swap an encoded token into this wallet, returning the amount received.
    ///
    /// `cdk` swaps the incoming proofs for fresh ones at the mint, so a token
    /// that was also copied elsewhere cannot be spent twice against us, and a
    /// token from another mint is rejected rather than ignored.
    ///
    /// DLEQ (NUT-12) is verified **here**, before the swap, rather than left to
    /// `cdk`: its receive path verifies a proof only `if proof.dleq.is_some()`
    /// (`wallet/receive/saga/mod.rs`, cdk 0.18.1), so a token whose proofs carry
    /// none is accepted on trust. That is the softer guarantee NUT-12 is a hard
    /// connect requirement to avoid — [`Wallet::verify_token_dleq`] rejects the
    /// missing proof instead of skipping it.
    ///
    /// **Errors** (stable markers): `CashuUnsupportedUnit` for a token in any
    /// unit but sats, `CashuTokenUnverified` when the token carries no usable
    /// DLEQ proof, `CashuReceiveFailed` for everything else (malformed, wrong
    /// mint, already spent).
    pub async fn receive_token(&self, encoded: &str) -> Result<u64> {
        let normalized = normalize_token(encoded);
        let token = parse_received_token(&normalized)?;

        if let Err(e) = self.inner.verify_token_dleq(&token).await {
            // A token minted elsewhere is a plain user mistake, not a failed
            // proof — same rejection, different thing to tell the user.
            return match e {
                cdk::Error::IncorrectWallet(detail) => {
                    Err(anyhow!("CashuReceiveFailed: {detail}"))
                }
                other => Err(anyhow!("CashuTokenUnverified: {other}")),
            };
        }

        let amount = self
            .inner
            .receive(&normalized, ReceiveOptions::default())
            .await
            .map_err(|e| anyhow!("CashuReceiveFailed: {e}"))?;
        log::info!("[cashu] received {amount} sat");
        Ok(u64::from(amount))
    }

    /// Export `amount_sats` as an encoded token.
    ///
    /// The proofs are reserved before the token is handed out and only settle
    /// once the recipient redeems them. A token that is never redeemed leaves
    /// its proofs reserved: reclaiming *that* is `revoke_send`, which arrives
    /// with the rest of reconciliation in phase C10 —
    /// [`Self::sweep_spent_proofs`] does not do it and does not claim to. The
    /// one case handled here is the send that fails on the way out, in
    /// [`Self::send_with_conditions`].
    ///
    /// **Errors** (stable markers): `CashuAmountZero`, `CashuSendFailed` (the
    /// send failed and the proofs are back), `CashuSendUnresolved` (the send
    /// failed and the proofs could *not* be confirmed back).
    pub async fn create_token(&self, amount_sats: u64) -> Result<String> {
        self.send_with_conditions(amount_sats, None).await
    }

    /// Swap `amount_sats` of wallet proofs into a token, optionally locked to
    /// `conditions` (NUT-11). `None` is a plain send; the escrow primitives in
    /// [`super::escrow`] pass the 2-of-3.
    ///
    /// One implementation for both because the failure path is the subtle
    /// part and must not drift: a `confirm` that fails after `prepare_send`
    /// leaves the whole amount reserved and invisible unless it is revoked
    /// here, and for an escrow that amount is the whole trade.
    ///
    /// **Errors** (stable markers): `CashuAmountZero`, `CashuSendFailed`,
    /// `CashuSendUnresolved` — see [`Self::create_token`].
    pub(crate) async fn send_with_conditions(
        &self,
        amount_sats: u64,
        conditions: Option<SpendingConditions>,
    ) -> Result<String> {
        if amount_sats == 0 {
            bail!("CashuAmountZero");
        }

        let prepared = self
            .inner
            .prepare_send(
                Amount::from(amount_sats),
                SendOptions {
                    conditions,
                    amount_split_target: SplitTarget::default(),
                    ..Default::default()
                },
            )
            .await
            .map_err(|e| anyhow!("CashuSendFailed: {e}"))?;

        // Kept before `confirm` consumes the handle: it is the only way back to
        // the proofs this send reserved.
        let operation_id = prepared.operation_id();

        let token = match prepared.confirm(None::<SendMemo>).await {
            Ok(token) => token,
            Err(e) => {
                // `prepare_send` reserved the proofs against `operation_id`;
                // `confirm` consumed the handle, so `cancel()` is gone. cdk
                // rolls the reservation back itself only for a *definitive*
                // failure (`wallet/send/saga/mod.rs`) — an ordinary mint
                // timeout is not one, and leaves the proofs reserved, which the
                // UI would show as the balance simply dropping.
                //
                // `revoke_send` is the way back once the saga reached
                // `TokenCreated`. It is not a reclaim of the *send* — the token
                // may exist — which is exactly why it is only ever called on
                // this failure path, never as routine recovery (that is C10).
                return match self.inner.revoke_send(operation_id).await {
                    Ok(reclaimed) => Err(anyhow!("CashuSendFailed: {e} (reclaimed {reclaimed} sat)")),
                    Err(revoke_err) => {
                        // Either cdk already rolled the send back (then nothing
                        // is stuck) or the proofs are still reserved (then they
                        // need C10's reconciliation). This code cannot tell the
                        // two apart, so it claims neither: no "reclaimed 0 sat",
                        // which would read as "your funds are accounted for".
                        log::error!(
                            "[cashu] send {operation_id} failed ({e}) and could not be revoked: {revoke_err}"
                        );
                        Err(anyhow!("CashuSendUnresolved: {e}"))
                    }
                };
            }
        };

        Ok(token.to_string())
    }

    /// Mint `amount_sats` straight from the mint, for tests only.
    ///
    /// Against a `FakeWallet` backend (which is what a local nutshell runs) the
    /// quote settles itself, so this funds a wallet with no Lightning node and
    /// no manual step. Without it the integration tests below assert
    /// "fund the wallet first" and can never pass, which makes them
    /// documentation rather than verification.
    ///
    /// "Settles itself" is not "settles at once": nutshell marks the quote paid
    /// before it answers, but a `cdk-mintd` fake backend (testnut) pays it
    /// about two seconds later, and minting before that fails. So this waits
    /// for the quote to read `Paid` before minting.
    #[cfg(test)]
    pub(crate) async fn mint_for_test(&self, amount_sats: u64) -> Result<u64> {
        use cdk::nuts::MintQuoteState;

        let quote = self
            .inner
            .mint_quote(
                PaymentMethod::BOLT11,
                Some(Amount::from(amount_sats)),
                None,
                None,
            )
            .await
            .map_err(|e| anyhow!("CashuMintQuoteFailed: {e}"))?;

        let mut attempts = 0;
        while self
            .inner
            .check_mint_quote_status(&quote.id)
            .await
            .map_err(|e| anyhow!("CashuMintQuoteFailed: {e}"))?
            .state
            != MintQuoteState::Paid
        {
            attempts += 1;
            if attempts == 20 {
                bail!(
                    "CashuMintFailed: quote {} still unpaid after 10 s (is the mint in FakeWallet mode?)",
                    quote.id
                );
            }
            tokio::time::sleep(std::time::Duration::from_millis(500)).await;
        }

        let proofs = self
            .inner
            .mint(&quote.id, SplitTarget::default(), None)
            .await
            .map_err(|e| anyhow!("CashuMintFailed: {e} (is the mint in FakeWallet mode?)"))?;

        Ok(proofs.iter().map(|p| u64::from(p.amount)).sum())
    }

    /// Ask the mint about proofs this wallet still holds as pending and forget
    /// the ones it reports spent (NUT-07).
    ///
    /// **Housekeeping, not recovery — nothing comes back from this call.** Two
    /// facts about `cdk`'s `check_all_pending_proofs` (`wallet/proofs.rs`,
    /// cdk 0.18.1) decide that:
    ///
    /// * it looks only at proofs no operation owns
    ///   (`p.used_by_operation.is_none()`), and `prepare_send` reserves
    ///   *against* an operation id (`wallet/send/saga/mod.rs`) — so it skips, by
    ///   construction, every proof a send of ours reserved;
    /// * the proofs the mint still calls live are left exactly as they are; only
    ///   the spent ones are dropped from the store.
    ///
    /// Which is why this returns nothing rather than a number that would read as
    /// "reclaimed". A token of ours that nobody redeemed is reclaimed with
    /// `revoke_send` over `get_pending_sends`, and doing that safely — deciding
    /// a token is abandoned — is reconciliation, phase C10.
    pub async fn sweep_spent_proofs(&self) -> Result<()> {
        // The return value is the *unresolved* remainder among orphaned proofs,
        // not a reclaim. Logged, because it is a diagnostic and nothing more.
        let unresolved = self
            .inner
            .check_all_pending_proofs()
            .await
            .map_err(|e| anyhow!("CashuStateCheckFailed: {e}"))?;
        log::info!("[cashu] swept spent proofs ({unresolved} sat still unresolved)");
        Ok(())
    }

    /// Ask the mint how the melts still in flight ended, and settle them: a
    /// paid one keeps its proofs spent and stores its change, a failed one
    /// returns its proofs to the balance. One the mint still calls pending is
    /// left as it is, for the next call.
    ///
    /// **Errors** (stable markers): `CashuStateCheckFailed` when the store
    /// cannot be read. A single melt the mint does not answer for is logged by
    /// cdk and skipped, not an error.
    pub async fn finalize_pending_melts(&self) -> Result<()> {
        let finalized = self
            .inner
            .finalize_pending_melts()
            .await
            .map_err(|e| anyhow!("CashuStateCheckFailed: {e}"))?;
        if !finalized.is_empty() {
            log::info!("[cashu] settled {} pending melt(s)", finalized.len());
        }
        Ok(())
    }

    /// Quote paying `invoice` from the wallet, reserving nothing.
    ///
    /// The fees are only known once proofs are chosen — cdk computes the
    /// input fee, and whether a swap is needed, in `prepare_melt` alone — so
    /// the melt is prepared and then cancelled at once. A prepared melt
    /// borrows the wallet and cannot outlive this call, and the user reading
    /// the confirmation must not hold any of the balance hostage.
    ///
    /// **Errors** (stable markers): those of [`melt_invoice`],
    /// `CashuMeltUnsupported` when the mint does not melt to `bolt11`,
    /// `CashuMeltAmountOutOfRange` outside the mint's limits,
    /// `CashuMeltQuoteFailed` when the mint does not quote,
    /// `CashuMeltInsufficientFunds`, `CashuMeltFailed`.
    pub async fn melt_quote(&self, invoice: &str) -> Result<MeltQuoteInfo> {
        let (invoice, amount_sats) = melt_invoice(invoice, unix_now())?;
        melt_gate(&self.capabilities, amount_sats)?;

        let quote = self
            .inner
            .melt_quote(PaymentMethod::BOLT11, invoice, None, None)
            .await
            .map_err(|e| match e {
                cdk::Error::AmountOutofLimitRange(..) => {
                    anyhow!("CashuMeltAmountOutOfRange: {e}")
                }
                cdk::Error::UnsupportedPaymentMethod => anyhow!("CashuMeltUnsupported: {e}"),
                other => anyhow!("CashuMeltQuoteFailed: {other}"),
            })?;

        let prepared = self
            .inner
            .prepare_melt(&quote.id, HashMap::new())
            .await
            .map_err(prepare_melt_error)?;
        let info = quote_info(&prepared);
        if let Err(e) = prepared.cancel().await {
            // The proofs stay reserved under a saga in `ProofsReserved`, which
            // the next connect's recovery rolls back.
            log::warn!("[cashu] releasing the quoted melt failed: {e}");
        }
        let info = info?;
        log::info!(
            "[cashu] melt quoted: {} sat, up to {} sat in total",
            info.amount_sats,
            info.max_total_sats
        );
        Ok(info)
    }

    /// Pay the quote `quote_id`, provided it costs no more than
    /// `max_total_sats` — the total the user confirmed.
    ///
    /// Prepared again rather than kept from [`Self::melt_quote`]: the fees
    /// are re-read from the proofs the wallet holds now, and a quote that
    /// expired or now costs more is cancelled before anything leaves.
    ///
    /// **Errors** (stable markers): `CashuMeltQuoteExpired`,
    /// `CashuMeltFeeChanged` (both refused before paying, nothing spent),
    /// `CashuMeltInsufficientFunds`, `CashuMeltFailed` (the payment did not
    /// go through; cdk has already run its recovery, so the proofs are back
    /// or, when the mint could not say, settled at the next sync).
    pub async fn melt(&self, quote_id: &str, max_total_sats: u64) -> Result<MeltOutcomeInfo> {
        let prepared = self
            .inner
            .prepare_melt(quote_id, HashMap::new())
            .await
            .map_err(prepare_melt_error)?;

        let refusal = if prepared.quote().expiry <= unix_now().as_secs() {
            Some(anyhow!("CashuMeltQuoteExpired"))
        } else {
            match quote_info(&prepared) {
                Ok(info) if info.max_total_sats > max_total_sats => Some(anyhow!(
                    "CashuMeltFeeChanged: {} sat over {max_total_sats} sat confirmed",
                    info.max_total_sats
                )),
                Ok(_) => None,
                Err(e) => Some(e),
            }
        };
        if let Some(refusal) = refusal {
            if let Err(e) = prepared.cancel().await {
                log::warn!("[cashu] releasing the refused melt failed: {e}");
            }
            return Err(refusal);
        }

        // Read before `confirm` consumes the handle: cdk's `fee_paid` counts
        // the melt's inputs only, and the swap that made them was paid too.
        let swap_fee = u64::from(prepared.swap_fee());

        match prepared.confirm_prefer_async().await {
            Ok(MeltOutcome::Paid(finalized)) => match finalized.state() {
                MeltQuoteState::Paid => {
                    let amount_sats = u64::from(finalized.amount());
                    let fee_paid_sats = u64::from(finalized.fee_paid()).saturating_add(swap_fee);
                    log::info!("[cashu] melted {amount_sats} sat ({fee_paid_sats} sat in fees)");
                    Ok(MeltOutcomeInfo::Paid {
                        amount_sats,
                        fee_paid_sats,
                    })
                }
                MeltQuoteState::Pending | MeltQuoteState::Unknown => {
                    log::info!("[cashu] melt pending");
                    Ok(MeltOutcomeInfo::Pending)
                }
                other => bail!("CashuMeltFailed: payment {other}"),
            },
            Ok(MeltOutcome::Pending(_pending)) => {
                // Dropping the handle leaves the saga recorded as in flight,
                // which `finalize_pending_melts` settles.
                log::info!("[cashu] melt pending");
                Ok(MeltOutcomeInfo::Pending)
            }
            Err(cdk::Error::ExpiredQuote(..)) => bail!("CashuMeltQuoteExpired"),
            Err(e) => bail!("CashuMeltFailed: {e}"),
        }
    }
}

/// [`MeltQuoteInfo`] of a prepared melt.
///
/// cdk 0.18.1 (`wallet/melt/saga/mod.rs`): the proofs are chosen to cover
/// `amount + fee_reserve`, and the input fee, plus the swap fee when they must
/// be swapped to fit, comes on top — [`PreparedMelt::total_fee`]. Only
/// [`PreparedMelt::amount`] is not what its name may suggest: it is the
/// quote's amount, not what the proofs add up to.
fn quote_info(prepared: &PreparedMelt<'_>) -> Result<MeltQuoteInfo> {
    let quote = prepared.quote();
    let amount_sats = u64::from(quote.amount);
    let fee_reserve_sats = u64::from(quote.fee_reserve);
    let input_fee_sats = u64::from(prepared.total_fee());
    let max_total_sats = melt_max_total(amount_sats, fee_reserve_sats, input_fee_sats)
        .ok_or_else(|| anyhow!("CashuMeltFailed: amount overflow"))?;
    Ok(MeltQuoteInfo {
        quote_id: quote.id.clone(),
        amount_sats,
        fee_reserve_sats,
        input_fee_sats,
        max_total_sats,
        expiry_unix: quote.expiry,
    })
}

/// The most a melt can take from the balance: the invoice, the routing fee
/// reserve and the mint's input fees. Change from an unspent reserve only
/// ever lowers it.
pub(crate) fn melt_max_total(amount: u64, fee_reserve: u64, input_fee: u64) -> Option<u64> {
    amount.checked_add(fee_reserve)?.checked_add(input_fee)
}

fn prepare_melt_error(e: cdk::Error) -> anyhow::Error {
    match e {
        cdk::Error::InsufficientFunds => anyhow!("CashuMeltInsufficientFunds"),
        cdk::Error::ExpiredQuote(..) => anyhow!("CashuMeltQuoteExpired"),
        other => anyhow!("CashuMeltFailed: {other}"),
    }
}

/// Refuse, from what the mint advertised at connect, a melt it will not do —
/// before it is asked for a quote.
///
/// **Errors** (stable markers): `CashuMeltUnsupported` when the mint does not
/// melt `sat` to `bolt11`, `CashuMeltAmountOutOfRange` outside its NUT-05
/// limits, where it states any.
fn melt_gate(capabilities: &MintCapabilities, amount_sats: u64) -> Result<()> {
    if !capabilities.nut05_bolt11 {
        bail!("CashuMeltUnsupported");
    }
    let above_min = capabilities
        .melt_min_sats
        .is_none_or(|min| amount_sats >= min);
    let below_max = capabilities
        .melt_max_sats
        .is_none_or(|max| amount_sats <= max);
    if !(above_min && below_max) {
        bail!("CashuMeltAmountOutOfRange: {amount_sats} sat");
    }
    Ok(())
}

fn unix_now() -> Duration {
    SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .unwrap_or_default()
}

/// The invoice the wallet will pay, and its amount in sats, checked before
/// any mint is asked.
///
/// The invoice is handed on lower-cased, with any `lightning:` prefix and
/// whitespace removed (BOLT11 is case-insensitive). `now` is unix time.
///
/// An amount with a fraction of a sat is refused, not rounded: the wallet
/// holds whole sats, and cdk checks the mint's quote against the invoice's
/// msat amount *floored* to sats (`wallet/melt/bolt11.rs`, cdk 0.18.1), so
/// a mint that rounds up — as it must to pay the invoice in full — has its
/// quote refused anyway, after a round trip. Same rule as
/// [`crate::api::invoice::whole_sats`].
///
/// **Errors** (stable markers): `CashuInvalidInvoice` for anything that is
/// not a BOLT11 invoice, or one with a fraction of a sat;
/// `CashuInvoiceNoAmount` for an open-amount invoice; `CashuInvoiceExpired`.
pub(crate) fn melt_invoice(input: &str, now: Duration) -> Result<(String, u64)> {
    use lightning_invoice::Bolt11Invoice;

    let invoice = crate::api::invoice::normalize(input).to_ascii_lowercase();
    let parsed = Bolt11Invoice::from_str(&invoice).map_err(|_| anyhow!("CashuInvalidInvoice"))?;
    let msat = parsed
        .amount_milli_satoshis()
        .ok_or_else(|| anyhow!("CashuInvoiceNoAmount"))?;
    let sats = crate::api::invoice::whole_sats(Some(msat))
        .ok_or_else(|| anyhow!("CashuInvalidInvoice: {msat} msat is not whole sats"))?;
    if parsed.would_expire(now) {
        bail!("CashuInvoiceExpired");
    }
    Ok((invoice, sats))
}

/// The mint's NUT-05 settings for melting `sat` to a `bolt11` invoice, or
/// `None` when it does not offer that — melting `disabled` included, whatever
/// methods it still lists.
fn bolt11_sat_melt(nut05: &cdk::nuts::nut05::Settings) -> Option<MeltMethodSettings> {
    if nut05.disabled {
        return None;
    }
    nut05.get_settings(&CurrencyUnit::Sat, &PaymentMethod::BOLT11)
}

/// The sats held in the proof store at `db_path` — at `mint_url`, or across
/// every mint when `None` — read without contacting any: what an identity
/// would leave behind if replaced, or what stays at a mint that is not
/// answering right now.
///
/// Every proof not known spent counts — unspent, reserved for a token nobody
/// redeemed yet, or in an operation in flight — since each is still the
/// owner's money. A store that does not exist holds nothing and is not
/// created.
///
/// **Errors**: `CashuStoreUnavailable`.
pub async fn stored_balance(db_path: &str, mint_url: Option<&str>) -> Result<u64> {
    use cdk::cdk_database::WalletDatabase;
    use cdk::nuts::State;

    if !std::path::Path::new(db_path).exists() {
        return Ok(0);
    }
    let mint_url = mint_url
        .map(cdk::mint_url::MintUrl::from_str)
        .transpose()
        .map_err(|e| anyhow!("InvalidMintUrl: {e}"))?;
    let store = WalletSqliteDatabase::new(db_path)
        .await
        .map_err(|e| anyhow!("CashuStoreUnavailable: {e}"))?;
    store
        .get_balance(
            mint_url,
            Some(CurrencyUnit::Sat),
            Some(vec![
                State::Unspent,
                State::Reserved,
                State::Pending,
                State::PendingSpent,
            ]),
        )
        .await
        .map_err(|e| anyhow!("CashuStoreUnavailable: {e}"))
}

/// The mint an encoded token was minted at, as the token names it.
///
/// Read without contacting any mint: it is how a wallet with no mint set yet
/// learns which one to bind to from the first token it receives.
///
/// **Errors**: `CashuReceiveFailed` when the token does not parse or names no
/// single mint, `CashuUnsupportedUnit` when it is not in sats.
pub fn token_mint_url(encoded: &str) -> Result<String> {
    let token = parse_received_token(encoded)?;
    let mint = token
        .mint_url()
        .map_err(|e| anyhow!("CashuReceiveFailed: {e}"))?;
    Ok(mint.to_string())
}

/// Refuse, from the token alone, a token this wallet cannot take.
///
/// Called before a wallet is opened for the token, so a dollar token is not
/// answered by whatever opening its mint happens to fail with.
///
/// **Errors**: those of [`parse_received_token`].
pub fn ensure_receivable(encoded: &str) -> Result<()> {
    parse_received_token(encoded).map(|_| ())
}

/// Decode a token handed to this wallet to receive.
///
/// The one place a received token is read, so every receive path refuses the
/// same tokens for the same reasons.
///
/// The unit is checked here, ahead of everything cdk does: the wallet holds
/// sats only (Mostro amounts are satoshis), and msat is no exception —
/// millisats become sats through a melt and a mint, never a swap. Left to cdk,
/// such a token fails its keyset lookup during the DLEQ check, which reads as
/// a token with no proof of the mint's signature. A v3 token naming no unit
/// passes, as it does in cdk: old sat tokens were written that way.
///
/// **Errors**: `CashuReceiveFailed` when the token does not parse,
/// `CashuUnsupportedUnit: <code>` when it names a unit other than sats — see
/// [`unsupported_unit_code`] for what `<code>` can be.
pub(crate) fn parse_received_token(encoded: &str) -> Result<Token> {
    let token = Token::from_str(&normalize_token(encoded))
        .map_err(|e| anyhow!("CashuReceiveFailed: {e}"))?;
    match token.unit() {
        None | Some(CurrencyUnit::Sat) => Ok(token),
        Some(other) => bail!("CashuUnsupportedUnit: {}", unsupported_unit_code(&other)),
    }
}

/// The unit a refused token is in, as a code Dart can name to the user.
///
/// `msat`, `usd` and `eur` as cdk spells them; a custom unit only when it is
/// three lowercase letters, the shape of a currency code (`gbp`); `other` for
/// everything else, `auth` included. A custom unit is whatever text the
/// token's maker chose, so anything longer never reaches the screen.
fn unsupported_unit_code(unit: &CurrencyUnit) -> String {
    match unit {
        CurrencyUnit::Msat => "msat".to_string(),
        CurrencyUnit::Usd => "usd".to_string(),
        CurrencyUnit::Eur => "eur".to_string(),
        CurrencyUnit::Custom(code)
            if code.len() == 3 && code.chars().all(|c| c.is_ascii_lowercase()) =>
        {
            code.to_string()
        }
        _ => "other".to_string(),
    }
}

/// Strip whitespace and the `cashu:` URI scheme.
///
/// QR payloads routinely carry `cashu:cashuB…`, and a wallet that rejects them
/// tells the user their token is from another mint or already spent — three
/// wrong explanations for one missing prefix strip.
pub(crate) fn normalize_token(encoded: &str) -> String {
    let trimmed = encoded.trim();
    trimmed
        .strip_prefix("cashu://")
        .or_else(|| trimmed.strip_prefix("cashu:"))
        .unwrap_or(trimmed)
        .trim()
        .to_string()
}

// ── Tests ────────────────────────────────────────────────────────────────────

#[cfg(test)]
mod tests {
    use super::*;

    /// Integration tests need a real mint. Point this at a local
    /// [nutshell](https://github.com/cashubtc/nutshell):
    ///
    /// ```text
    /// docker run -p 3338:3338 cashubtc/nutshell:latest poetry run mint
    /// MOSTRO_TEST_MINT_URL=http://localhost:3338 cargo test --lib cashu:: -- --ignored
    /// ```
    ///
    /// or, without Docker, at the public test mint, whose Lightning backend is
    /// fake too:
    ///
    /// ```text
    /// MOSTRO_TEST_MINT_URL=https://testnut.cashu.space cargo test --lib cashu:: -- --ignored
    /// ```
    ///
    /// `cashu::` keeps the run to these tests: an unfiltered `--ignored` also
    /// starts the NWC and regtest ones, which fail without their own setup.
    ///
    /// They are `#[ignore]` so CI stays green without one. A mock is not an
    /// option here: it would have to fake blind signatures and DLEQ proofs, and
    /// a wallet that passes against faked cryptography has proven nothing.
    fn test_mint_url() -> String {
        std::env::var("MOSTRO_TEST_MINT_URL")
            .expect("set MOSTRO_TEST_MINT_URL to run the Cashu integration tests")
    }

    /// A seed unique to this process *and* this call.
    ///
    /// cdk derives blinding secrets deterministically from the seed and a
    /// counter kept in the wallet DB (NUT-13). These tests create a fresh DB
    /// each time, so a fixed seed replays the same blinded messages and the
    /// mint answers "already signed" on the second run. Unique seeds make the
    /// suite re-runnable, which is the whole point of a reviewer being able to
    /// run it.
    fn unique_seed() -> zeroize::Zeroizing<[u8; 64]> {
        use std::sync::atomic::{AtomicU64, Ordering};
        static COUNTER: AtomicU64 = AtomicU64::new(0);
        let mut seed = [0u8; 64];
        let pid = std::process::id() as u64;
        let n = COUNTER.fetch_add(1, Ordering::Relaxed);
        seed[..8].copy_from_slice(&pid.to_le_bytes());
        seed[8..16].copy_from_slice(&n.to_le_bytes());
        seed[16..24].copy_from_slice(
            &std::time::SystemTime::now()
                .duration_since(std::time::UNIX_EPOCH)
                .map(|d| d.as_nanos() as u64)
                .unwrap_or(0)
                .to_le_bytes(),
        );
        zeroize::Zeroizing::new(seed)
    }

    fn temp_db_path() -> std::path::PathBuf {
        use std::sync::atomic::{AtomicU32, Ordering};
        static COUNTER: AtomicU32 = AtomicU32::new(0);
        let n = COUNTER.fetch_add(1, Ordering::Relaxed);
        std::env::temp_dir().join(format!("mostro_cashu_test_{}_{n}.db", std::process::id()))
    }

    #[test]
    fn a_mint_missing_any_requirement_is_unusable() {
        // Arrange — everything present.
        let all = MintCapabilities {
            nut07_state_check: true,
            nut11_p2pk: true,
            nut12_dleq: true,
            has_sat_keyset: true,
            ..MintCapabilities::default()
        };

        // Assert
        assert!(all.is_usable());
        assert!(all.missing().is_empty());

        // Act / Assert — dropping any single requirement closes the door, and
        // the marker says which. There is no partial "works for now" state.
        for (dropped, marker) in [
            (
                MintCapabilities {
                    nut07_state_check: false,
                    ..all.clone()
                },
                "nut07",
            ),
            (
                MintCapabilities {
                    nut11_p2pk: false,
                    ..all.clone()
                },
                "nut11",
            ),
            (
                MintCapabilities {
                    nut12_dleq: false,
                    ..all.clone()
                },
                "nut12",
            ),
            (
                MintCapabilities {
                    has_sat_keyset: false,
                    ..all.clone()
                },
                "sat_keyset",
            ),
        ] {
            assert!(!dropped.is_usable(), "{marker} must be required");
            assert_eq!(dropped.missing(), vec![marker]);
        }
    }

    #[test]
    fn a_scanned_token_uri_is_accepted() {
        // Arrange — the shapes a QR scanner actually hands over. Rejecting any
        // of these tells the user their token is from another mint or already
        // spent, which is three wrong explanations for a missing prefix strip.
        for input in [
            "cashuBtoken",
            "  cashuBtoken\n",
            "cashu:cashuBtoken",
            "cashu://cashuBtoken",
            "  cashu: cashuBtoken ",
        ] {
            assert_eq!(normalize_token(input), "cashuBtoken", "input: {input:?}");
        }
    }

    #[test]
    fn normalisation_leaves_a_token_body_alone() {
        // Assert — only the scheme is stripped, never a prefix that happens to
        // look like one inside the payload.
        assert_eq!(normalize_token("cashuBcashu:inner"), "cashuBcashu:inner");
    }

    #[tokio::test]
    async fn a_missing_proof_store_holds_nothing_and_is_not_created() {
        // Asked of every identity before it is replaced, most of which never
        // opened a wallet: reading must not leave a file behind.
        let path = temp_db_path();

        assert_eq!(
            stored_balance(path.to_str().unwrap(), None).await.unwrap(),
            0
        );
        assert!(!path.exists());
    }

    #[tokio::test]
    async fn an_empty_proof_store_holds_nothing() {
        let path = temp_db_path();
        drop(
            WalletSqliteDatabase::new(path.to_str().unwrap())
                .await
                .unwrap(),
        );

        assert_eq!(
            stored_balance(path.to_str().unwrap(), None).await.unwrap(),
            0
        );
        assert_eq!(
            stored_balance(path.to_str().unwrap(), Some("https://mint.example.com"))
                .await
                .unwrap(),
            0
        );
        let _ = std::fs::remove_file(&path);
    }

    #[test]
    fn a_token_names_the_mint_it_was_minted_at() {
        // Arrange — a token needs no mint to be read, only to be redeemed.
        let mint = cdk::mint_url::MintUrl::from_str("https://mint.example.com").unwrap();
        let encoded = Token::new(mint, Vec::new(), None, CurrencyUnit::Sat).to_string();

        // Act / Assert — with or without the URI scheme a wallet may add.
        assert_eq!(
            token_mint_url(&encoded).unwrap(),
            "https://mint.example.com"
        );
        assert_eq!(
            token_mint_url(&format!("cashu:{encoded}")).unwrap(),
            "https://mint.example.com"
        );
        // Something that is not a token names no mint.
        assert!(token_mint_url("cashuBanything")
            .unwrap_err()
            .to_string()
            .contains("CashuReceiveFailed"));
    }

    #[test]
    fn a_token_in_another_unit_is_refused_as_such() {
        // Arrange — the wallet holds sats only, and msat is no exception:
        // turning millisats into sats is a melt and a mint, not a swap.
        let mint = cdk::mint_url::MintUrl::from_str("https://mint.example.com").unwrap();
        let token_in =
            |unit: CurrencyUnit| Token::new(mint.clone(), Vec::new(), None, unit).to_string();

        // Act / Assert — refused for its unit, before any mint is asked.
        // The code after the marker is what Dart names: the known units, a
        // currency-code-shaped custom one, and "other" for any text a token's
        // maker could have put there.
        for (unit, code) in [
            (CurrencyUnit::Msat, "msat"),
            (CurrencyUnit::Usd, "usd"),
            (CurrencyUnit::Eur, "eur"),
            (CurrencyUnit::custom("GBP"), "gbp"),
            (CurrencyUnit::Auth, "other"),
            (CurrencyUnit::custom("sats"), "other"),
            (CurrencyUnit::custom("usd now"), "other"),
            (CurrencyUnit::custom("u$d"), "other"),
        ] {
            let err = parse_received_token(&token_in(unit.clone())).unwrap_err();
            assert_eq!(
                err.to_string(),
                format!("CashuUnsupportedUnit: {code}"),
                "a {unit} token"
            );
        }

        // A sat token is read, and so is a v3 token that names no unit: cdk
        // takes those as sats, and old sat tokens were written that way.
        assert!(parse_received_token(&token_in(CurrencyUnit::Sat)).is_ok());
        let unitless = Token::TokenV3(cdk::nuts::TokenV3 {
            token: vec![cdk::nuts::nut00::token::TokenV3Token::new(
                mint.clone(),
                Vec::new(),
            )],
            memo: None,
            unit: None,
        });
        assert!(parse_received_token(&unitless.to_string()).is_ok());
    }

    #[test]
    fn a_mint_without_melt_still_trades() {
        // Arrange — every escrow requirement, and no NUT-05.
        let no_melt = MintCapabilities {
            nut07_state_check: true,
            nut11_p2pk: true,
            nut12_dleq: true,
            has_sat_keyset: true,
            nut05_bolt11: false,
            melt_min_sats: None,
            melt_max_sats: None,
        };

        // Assert — "send to Lightning" is hidden, the mint is not refused.
        assert!(no_melt.is_usable());
        assert!(no_melt.missing().is_empty());
    }

    #[test]
    fn melting_counts_only_for_bolt11_in_sats_and_not_disabled() {
        use cdk::nuts::nut05::Settings;

        let method = |method: PaymentMethod, unit: CurrencyUnit| MeltMethodSettings {
            method,
            unit,
            method_name: None,
            min_amount: Some(Amount::from(10)),
            max_amount: Some(Amount::from(500_000)),
            options: None,
        };
        let offering =
            |methods: Vec<MeltMethodSettings>, disabled: bool| Settings { methods, disabled };

        // bolt11 in sats: offered, with its limits.
        let melt = bolt11_sat_melt(&offering(
            vec![method(PaymentMethod::BOLT11, CurrencyUnit::Sat)],
            false,
        ))
        .expect("bolt11/sat is a melt this wallet can use");
        assert_eq!(melt.min_amount, Some(Amount::from(10)));
        assert_eq!(melt.max_amount, Some(Amount::from(500_000)));

        // The same method with melting disabled, another unit, another
        // method, or nothing listed: not offered.
        for (settings, why) in [
            (
                offering(vec![method(PaymentMethod::BOLT11, CurrencyUnit::Sat)], true),
                "disabled",
            ),
            (
                offering(
                    vec![method(PaymentMethod::BOLT11, CurrencyUnit::Usd)],
                    false,
                ),
                "usd only",
            ),
            (
                offering(
                    vec![method(PaymentMethod::BOLT12, CurrencyUnit::Sat)],
                    false,
                ),
                "bolt12 only",
            ),
            (offering(Vec::new(), false), "nothing listed"),
        ] {
            assert!(bolt11_sat_melt(&settings).is_none(), "{why}");
        }
    }

    #[test]
    fn a_fresh_capability_set_is_unusable() {
        // Assert — the default must fail closed, so a probe that never ran
        // cannot be mistaken for a usable mint.
        let unknown = MintCapabilities::default();
        assert!(!unknown.is_usable());
        assert_eq!(unknown.missing().len(), 4);
    }

    #[tokio::test]
    #[ignore = "requires a local nutshell mint (MOSTRO_TEST_MINT_URL)"]
    async fn connects_to_a_real_mint_and_starts_empty() {
        // Arrange / Act
        let path = temp_db_path();
        let wallet = CashuWallet::connect(&test_mint_url(), unique_seed(), path.to_str().unwrap())
            .await
            .expect("nutshell must be reachable");

        // Assert
        assert!(wallet.capabilities().is_usable());
        assert_eq!(wallet.balance().await.unwrap(), 0);

        let _ = std::fs::remove_file(&path);
    }

    #[tokio::test]
    #[ignore = "requires a local nutshell mint (MOSTRO_TEST_MINT_URL)"]
    async fn an_unreachable_mint_fails_with_a_marker() {
        // Arrange — a port nothing listens on.
        let path = temp_db_path();

        // Act
        let err = CashuWallet::connect("http://127.0.0.1:1", unique_seed(), path.to_str().unwrap())
            .await
            .unwrap_err();

        // Assert — the marker is what Dart localizes; the cause is for the log.
        assert!(err.to_string().contains("CashuMintUnreachable"), "got {err}");

        let _ = std::fs::remove_file(&path);
    }

    #[tokio::test]
    #[ignore = "requires a local nutshell mint (MOSTRO_TEST_MINT_URL)"]
    async fn a_token_round_trips_between_two_wallets() {
        // Arrange — two wallets at the same mint, funded from the mint itself.
        let sender_path = temp_db_path();
        let receiver_path = temp_db_path();
        let mint = test_mint_url();

        let sender = CashuWallet::connect(&mint, unique_seed(), sender_path.to_str().unwrap())
            .await
            .unwrap();
        let receiver = CashuWallet::connect(&mint, unique_seed(), receiver_path.to_str().unwrap())
            .await
            .unwrap();

        sender.mint_for_test(64).await.expect("mint must fund the wallet");
        let funded = sender.balance().await.unwrap();
        assert!(funded >= 8, "minting should have funded the wallet");

        // Act
        let token = sender.create_token(8).await.unwrap();
        let received = receiver.receive_token(&token).await.unwrap();

        // Assert — the sender parted with the token's face value; the receiver
        // gets that minus whatever the mint charges to swap (nutshell's default
        // keyset has a non-zero input fee, and a real mint may too).
        assert!(
            received > 0 && received <= 8,
            "received {received} sat for an 8 sat token"
        );
        assert_eq!(receiver.balance().await.unwrap(), received);
        assert_eq!(sender.balance().await.unwrap(), funded - 8);

        let _ = std::fs::remove_file(&sender_path);
        let _ = std::fs::remove_file(&receiver_path);
    }

    /// The guarantee C2 promises on receive, exercised the only way that proves
    /// anything: take a genuine token, strip its DLEQ proofs, and hand it back.
    /// cdk's own receive path would accept this one — it verifies a proof only
    /// when the proof is there — so a pass here is the explicit check working,
    /// not cdk's.
    #[tokio::test]
    #[ignore = "requires a local nutshell mint (MOSTRO_TEST_MINT_URL)"]
    async fn a_token_stripped_of_its_dleq_proofs_is_refused() {
        // Arrange — a real token from a funded wallet.
        let path = temp_db_path();
        let receiver_path = temp_db_path();
        let mint = test_mint_url();

        let sender = CashuWallet::connect(&mint, unique_seed(), path.to_str().unwrap())
            .await
            .unwrap();
        let receiver = CashuWallet::connect(&mint, unique_seed(), receiver_path.to_str().unwrap())
            .await
            .unwrap();
        sender.mint_for_test(64).await.expect("mint must fund the wallet");

        let encoded = sender.create_token(8).await.unwrap();
        let token = Token::from_str(&encoded).unwrap();

        // Act — the same token, minus the evidence that the mint issued it.
        let stripped: Vec<_> = receiver
            .proofs_of(&token)
            .await
            .unwrap()
            .into_iter()
            .map(|mut p| {
                p.dleq = None;
                p
            })
            .collect();
        let no_dleq = Token::new(
            token.mint_url().unwrap(),
            stripped,
            None,
            CurrencyUnit::Sat,
        );

        let err = receiver
            .receive_token(&no_dleq.to_string())
            .await
            .unwrap_err();

        // Assert — refused, and with the marker that says *why*, not the
        // generic receive failure a user would read as "bad token".
        assert!(
            err.to_string().contains("CashuTokenUnverified"),
            "got {err}"
        );
        // And the genuine one still goes through, so the check is not simply
        // refusing everything.
        assert!(receiver.receive_token(&encoded).await.unwrap() > 0);

        let _ = std::fs::remove_file(&path);
        let _ = std::fs::remove_file(&receiver_path);
    }

    /// Pins the honest half of [`CashuWallet::sweep_spent_proofs`]: a token this
    /// wallet created and nobody redeemed is **not** recovered by it, because
    /// cdk's state check skips proofs an operation reserved. The test exists so
    /// that a future "the sweep should bring it back" reading of the name gets
    /// a failing test instead of a wrong balance — reclaiming is C10.
    #[tokio::test]
    #[ignore = "requires a local nutshell mint (MOSTRO_TEST_MINT_URL)"]
    async fn an_unredeemed_token_is_not_recovered_by_the_sweep() {
        // Arrange
        let path = temp_db_path();
        let wallet = CashuWallet::connect(&test_mint_url(), unique_seed(), path.to_str().unwrap())
            .await
            .unwrap();
        wallet.mint_for_test(64).await.expect("mint must fund the wallet");
        let funded = wallet.balance().await.unwrap();

        // Act — export a token and abandon it.
        let _abandoned = wallet.create_token(8).await.unwrap();
        let after_send = wallet.balance().await.unwrap();
        wallet.sweep_spent_proofs().await.unwrap();

        // Assert — the sats are still out of reach, and the sweep said nothing
        // to the contrary.
        assert_eq!(after_send, funded - 8, "the send should have left the balance");
        assert_eq!(
            wallet.balance().await.unwrap(),
            after_send,
            "the sweep must not be mistaken for a reclaim"
        );

        let _ = std::fs::remove_file(&path);
    }

    #[tokio::test]
    #[ignore = "requires a local nutshell mint (MOSTRO_TEST_MINT_URL)"]
    async fn creating_a_zero_token_is_rejected_before_touching_the_mint() {
        let path = temp_db_path();
        let wallet = CashuWallet::connect(&test_mint_url(), unique_seed(), path.to_str().unwrap())
            .await
            .unwrap();

        let err = wallet.create_token(0).await.unwrap_err();
        assert!(err.to_string().contains("CashuAmountZero"), "got {err}");

        let _ = std::fs::remove_file(&path);
    }
}
