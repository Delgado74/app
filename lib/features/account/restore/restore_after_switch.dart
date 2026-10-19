import 'package:flutter/widgets.dart';

import 'package:mostro/features/account/restore/restore_run.dart';
import 'package:mostro/features/account/restore/restore_sheet.dart';
import 'package:mostro/src/rust/api/reputation.dart' as reputation_api;

/// Restores the account on the node just switched to (#813), in the same
/// sheet as Account → Refresh, resolving once the user closes it.
///
/// Not in privacy mode, which has no account on the node to restore, nor
/// when that cannot be told: the switch already happened, and a failed check
/// must not turn it into a failure. The switch stands whatever the restore
/// does; a failed one offers its retry in the sheet.
Future<void> restoreAfterNodeSwitch(
  BuildContext context, {
  Future<bool> Function() privacyMode = reputation_api.getPrivacyMode,
  RestoreRun Function() run = RestoreRun.core,
}) async {
  final bool private;
  try {
    private = await privacyMode();
  } catch (e) {
    debugPrint('[restore] privacy mode unavailable after a node switch: $e');
    return;
  }
  if (private || !context.mounted) return;
  await showRestoreSheet(context, run: run());
}
