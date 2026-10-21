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

#[cfg(test)]
mod tests {
    use super::*;
    use std::str::FromStr;

    /// A mint of its own per test: the registry is process-wide and the
    /// tests run in parallel.
    fn a_mint() -> MintUrl {
        MintUrl::from_str(&format!("https://{}.mint.example", uuid::Uuid::new_v4())).unwrap()
    }

    #[test]
    fn a_second_melt_at_the_same_mint_is_refused_until_the_first_ends() {
        // Arrange
        let mint = a_mint();
        let other = a_mint();
        let first = try_begin_melt(&mint).unwrap();

        // Act / Assert — the mint is marked, and a second melt there is refused
        // with the marker Dart maps.
        assert!(melt_in_flight(&mint));
        let refused = try_begin_melt(&mint).err().expect("a second melt must be refused");
        assert_eq!(refused.to_string(), "CashuMeltInFlight");

        // Another mint is not held up by it.
        assert!(!melt_in_flight(&other));
        let _other = try_begin_melt(&other).unwrap();

        // Once the first ends, the mint is free again.
        drop(first);
        assert!(!melt_in_flight(&mint));
        assert!(try_begin_melt(&mint).is_ok());
    }

    #[test]
    fn the_mark_holds_while_the_melt_runs_and_clears_on_an_early_return() {
        fn a_melt_that_fails(mint: &MintUrl) -> Result<()> {
            let _in_flight = try_begin_melt(mint)?;
            assert!(melt_in_flight(mint), "marked while it runs");
            anyhow::bail!("CashuMeltFailed")
        }

        let mint = a_mint();
        assert!(a_melt_that_fails(&mint).is_err());
        assert!(!melt_in_flight(&mint), "cleared once it returned");
    }

    #[test]
    fn the_mark_is_keyed_by_the_mint_not_by_how_its_url_is_spelled() {
        // A user who switches mints and back may type the trailing slash once
        // and not the other time; it is the same mint, with the same sagas.
        let host = format!("{}.mint.example", uuid::Uuid::new_v4());
        let typed = MintUrl::from_str(&format!("https://{host}/")).unwrap();
        let bare = MintUrl::from_str(&format!("https://{host}")).unwrap();

        let _in_flight = try_begin_melt(&typed).unwrap();
        assert!(melt_in_flight(&bare));
    }
}
