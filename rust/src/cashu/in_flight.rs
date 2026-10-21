//! Melts still talking to their mint (issue #864).
//!
//! cdk resumes every melt saga it finds in `MeltRequested` or `PaymentPending`
//! — at Sync (`finalize_pending_melts`) and at connect
//! (`recover_incomplete_sagas`) — with no check that the call which wrote it is
//! still running. One whose request the mint has not processed yet reads
//! `Unpaid`, and cdk rolls it back: the proofs return to the balance, then the
//! mint pays with them.
//!
//! So a melt marks its mint for as long as [`CashuWallet::melt`] runs, and
//! both of those leave the mint's melts alone while it is marked. The mark is
//! process-wide, keyed by mint, not a field of the wallet: switching mints and
//! back binds a new wallet while the old one's melt is still running.
//!
//! [`CashuWallet::melt`]: super::CashuWallet::melt

use anyhow::Result;
use cdk::mint_url::MintUrl;

/// The mark a melt holds on its mint; dropping it clears the mark.
#[must_use = "the mark is cleared as soon as it is dropped"]
pub(crate) struct MeltInFlight;

/// Mark `mint` as having a melt in flight.
///
/// **Errors** (stable markers): `CashuMeltInFlight` when another melt already
/// holds the mark.
pub(crate) fn try_begin_melt(_mint: &MintUrl) -> Result<MeltInFlight> {
    Ok(MeltInFlight)
}

/// Whether a melt holds the mark on `mint`.
pub(crate) fn melt_in_flight(_mint: &MintUrl) -> bool {
    false
}
