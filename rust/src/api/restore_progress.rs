//! How far an account restore got, for the restore sheet (design 20a–20d).
//!
//! `recover_trades` answers only once, at the end. The sheet shows the stages
//! as they happen: the request reaching a relay, the node's answer and how
//! many orders it named, and each order's details arriving. Those steps are
//! pushed here as [`RestoreProgress`]; the outcome stays `recover_trades`'
//! result. Subscribe **before** calling it, or the first steps are missed.
//!
//! Restores run one at a time (`orders::restore_session_on`), and each one
//! that goes ahead opens with [`started`]. A stream delivers steps only from
//! the first start it hears: a sheet opened while an earlier restore still
//! runs (its sheet closed, then a node switch) shows none of that one's steps.

use anyhow::Result;
use tokio::sync::broadcast;

use crate::api::types::RestoreProgress;

/// A restore emits a handful of steps plus one per order, and a subscriber
/// that falls behind only loses intermediate counts, never the outcome.
const CAPACITY: usize = 64;

/// What the channel carries: the steps, and the start of each restore.
#[derive(Debug, Clone)]
enum Signal {
    Started,
    Step(RestoreProgress),
}

static PROGRESS: std::sync::OnceLock<broadcast::Sender<Signal>> = std::sync::OnceLock::new();

fn sender() -> &'static broadcast::Sender<Signal> {
    PROGRESS.get_or_init(|| broadcast::channel(CAPACITY).0)
}

/// Report a restore step.
pub(crate) fn emit(step: RestoreProgress) {
    // An error only means nobody is listening.
    let _ = sender().send(Signal::Step(step));
}

/// Report that a restore goes ahead: it is the only one running and its
/// node is still the active one. Every step after it is that restore's.
pub(crate) fn started() {
    let _ = sender().send(Signal::Started);
}

/// The steps of the node's answer: every order and dispute it returned, and
/// how many of them the restore fetches the details of.
pub(crate) fn found(info: &mostro_core::message::RestoreSessionInfo, to_load: usize) -> RestoreProgress {
    RestoreProgress::Found {
        found: (info.restore_orders.len() + info.restore_disputes.len()) as u32,
        to_load: to_load as u32,
    }
}

/// Stream of restore steps; see the module docs.
pub async fn on_restore_progress() -> Result<RestoreProgressStream> {
    Ok(RestoreProgressStream {
        rx: sender().subscribe(),
        following: false,
    })
}

/// Wrapper for flutter_rust_bridge Dart Stream generation.
pub struct RestoreProgressStream {
    rx: broadcast::Receiver<Signal>,
    /// A start was heard: the steps that follow are the restore this stream
    /// was opened for, or one after it.
    following: bool,
}

impl RestoreProgressStream {
    pub async fn next(&mut self) -> Option<RestoreProgress> {
        loop {
            match self.rx.recv().await {
                Ok(Signal::Started) => self.following = true,
                Ok(Signal::Step(step)) if self.following => return Some(step),
                // An earlier restore's, still running.
                Ok(Signal::Step(_)) => {}
                // Only intermediate counts were lost; the next step is current.
                // The start may have been among them: follow from here rather
                // than leave the sheet waiting for one that already passed.
                Err(broadcast::error::RecvError::Lagged(n)) => {
                    log::warn!("[restore-progress] stream lagged, {n} steps dropped");
                    self.following = true;
                }
                Err(broadcast::error::RecvError::Closed) => return None,
            }
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use mostro_core::message::RestoreSessionInfo;

    /// The channel is process-wide and tests run in parallel, so each test
    /// reads until it sees the step it sent.
    async fn next_matching(stream: &mut RestoreProgressStream, want: &RestoreProgress) {
        loop {
            if &stream.next().await.expect("the sender is a static") == want {
                return;
            }
        }
    }

    #[tokio::test]
    async fn a_step_reaches_a_subscriber() {
        // Arrange
        let mut stream = on_restore_progress().await.unwrap();
        let step = RestoreProgress::Loaded { done: 41, to_load: 97 };

        // Act
        started();
        emit(step.clone());

        // Assert
        next_matching(&mut stream, &step).await;
    }

    #[tokio::test]
    async fn a_subscriber_that_fell_behind_still_hears_the_next_step() {
        let mut stream = on_restore_progress().await.unwrap();
        started();
        for done in 0..=CAPACITY as u32 {
            emit(RestoreProgress::Loaded { done, to_load: 999 });
        }
        let last = RestoreProgress::Loaded { done: 998, to_load: 999 };

        emit(last.clone());

        next_matching(&mut stream, &last).await;
    }

    /// A sheet opened while an earlier restore still runs follows only the
    /// restore that starts after it: the earlier one's steps never reach it.
    /// On a channel of its own: other tests start restores on the shared one.
    #[tokio::test]
    async fn a_stream_skips_the_steps_of_a_restore_already_running() {
        let (tx, rx) = broadcast::channel(CAPACITY);
        let mut stream = RestoreProgressStream {
            rx,
            following: false,
        };
        let earlier = RestoreProgress::Loaded {
            done: 7,
            to_load: 8,
        };
        let own = RestoreProgress::Loaded {
            done: 1,
            to_load: 2,
        };

        tx.send(Signal::Step(earlier)).unwrap();
        tx.send(Signal::Started).unwrap();
        tx.send(Signal::Step(own.clone())).unwrap();

        assert_eq!(stream.next().await, Some(own));
    }

    #[test]
    fn the_answer_counts_orders_and_disputes_and_what_is_loaded() {
        use mostro_core::message::{RestoredDisputesInfo, RestoredOrdersInfo};
        let order = |status: &str| RestoredOrdersInfo {
            order_id: uuid::Uuid::new_v4(),
            trade_index: 14,
            status: status.to_string(),
            counterparty_trade_pubkey: None,
        };
        let info = RestoreSessionInfo {
            restore_orders: vec![order("active"), order("waiting-maker-bond")],
            restore_disputes: vec![RestoredDisputesInfo {
                dispute_id: uuid::Uuid::new_v4(),
                order_id: uuid::Uuid::new_v4(),
                trade_index: 11,
                status: "in-progress".to_string(),
                initiator: None,
                solver_pubkey: None,
            }],
        };

        assert_eq!(found(&info, 1), RestoreProgress::Found { found: 3, to_load: 1 });
    }
}
