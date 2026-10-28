// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Mostro';

  @override
  String get loading => 'Loading…';

  @override
  String get actionFailedAnnouncement => 'Action failed';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get done => 'Done';

  @override
  String get skip => 'Skip';

  @override
  String get chatTimestampYesterday => 'Yesterday';

  @override
  String get disputesEmptyState => 'Your disputes will appear here';

  @override
  String get disputeAttachFile => 'Attach file';

  @override
  String get disputeWriteMessageHint => 'Write a message…';

  @override
  String get disputeSend => 'Send';

  @override
  String get orderDispute => 'Order dispute';

  @override
  String get disputeSolverAssigned =>
      'A dispute resolver has taken your dispute. They will contact you here shortly.';

  @override
  String get disputeChatClosed =>
      'This dispute has been resolved. The chat is closed.';

  @override
  String get messageCopied => 'Copied';

  @override
  String get disputeLoadError => 'Failed to load disputes. Please try again.';

  @override
  String get disputeSolverNotAssigned =>
      'No resolver has taken this dispute yet. You can write once one does.';

  @override
  String get disputeNotFound => 'Dispute not found.';

  @override
  String get disputeNotFoundForOrder => 'Dispute not found for this order.';

  @override
  String get disputeResolved => 'Resolved';

  @override
  String get disputeSuccessfullyCompleted => 'Successfully completed';

  @override
  String get disputeCoopCancelMessage =>
      'The order was cooperatively cancelled. No funds were transferred.';

  @override
  String orderLabel(String orderId) {
    return 'Order $orderId';
  }

  @override
  String get disputeStatusClosed => 'Closed';

  @override
  String disputeWith(String role, String counterparty) {
    return 'Dispute with $role: $counterparty';
  }

  @override
  String get seller => 'Seller';

  @override
  String get buyer => 'Buyer';

  @override
  String get disputeStatusInitiated => 'Initiated';

  @override
  String get disputeStatusInProgress => 'In progress';

  @override
  String get disputeStatusResolved => 'Resolved';

  @override
  String get disputeInProgress =>
      'This dispute is currently in progress. A resolver is reviewing your case.';

  @override
  String get disputeInstruction1 =>
      'Wait for a resolver to take your dispute. Once they arrive, share any relevant evidence to help clarify the situation.';

  @override
  String get disputeInstruction2 =>
      'The final decision will be made based on the evidence presented.';

  @override
  String get disputeInstruction3 =>
      'If you don\'t respond, the system will assume you don\'t want to cooperate and you might lose the dispute.';

  @override
  String disputeOpenedByYouAgainstSeller(String counterparty) {
    return 'You opened this dispute against the seller $counterparty. Please read the following carefully:';
  }

  @override
  String disputeOpenedByYouAgainstBuyer(String counterparty) {
    return 'You opened this dispute against the buyer $counterparty. Please read the following carefully:';
  }

  @override
  String get disputeWaitingForAdmin =>
      'Waiting for a resolver to take the dispute';

  @override
  String get disputeLostFundsToBuyer =>
      'The dispute resolver settled the dispute in the buyer\'s favour. The sats were released to the buyer.';

  @override
  String get disputeLostFundsToSeller =>
      'The dispute resolver cancelled the order and returned the sats to the seller. You did not receive the sats.';

  @override
  String get walkthroughWelcomeTitle => 'P2P Bitcoin, no KYC';

  @override
  String get walkthroughWelcomeBody1 =>
      'Mostro is a peer-to-peer exchange that lets you trade Bitcoin for any currency and payment method, with no KYC and no need to give your data to anyone.';

  @override
  String get walkthroughWelcomeBody2 =>
      'It\'s built on Nostr, which makes it censorship-resistant. No one can stop you from trading.';

  @override
  String get walkthroughPrivacyTitle => 'Privacy by default';

  @override
  String get walkthroughPrivacyBody1 =>
      'Mostro generates a new identity for every trade, so your trades can\'t be linked.';

  @override
  String get walkthroughPrivacyBody2 =>
      'You can also decide how private you want to be:';

  @override
  String get walkthroughReputationModeName => 'Reputation mode';

  @override
  String get walkthroughReputationModeBody =>
      'Lets others see your successful trades and trust level.';

  @override
  String get walkthroughFullPrivacyModeName => 'Full privacy mode';

  @override
  String get walkthroughFullPrivacyModeBody =>
      'No reputation is built, but your activity is completely anonymous.';

  @override
  String get walkthroughPrivacyFooter =>
      'Switch modes anytime from the Account screen. That\'s also where you should save your secret words. They\'re the only way to recover your account.';

  @override
  String get walkthroughHeldTitle => 'Security at every step';

  @override
  String get walkthroughHeldBody1 =>
      'The seller\'s sats stay locked until the trade ends. This protects both sides.';

  @override
  String get walkthroughHeldBody2 =>
      'The app is also designed to be intuitive and easy for all kinds of users.';

  @override
  String get walkthroughChatTitle => 'Fully encrypted chat';

  @override
  String get walkthroughChatBody1 =>
      'Each trade has its own private chat, end-to-end encrypted. Only you and your counterpart can read it, unless one of you shares its key.';

  @override
  String get walkthroughChatBody2 =>
      'In a dispute, sharing that key with a dispute resolver lets them read the chat and help settle it.';

  @override
  String get walkthroughTakeTitle => 'Take an order';

  @override
  String get walkthroughTakeBody1 =>
      'Browse the order book, choose an order that works for you, and follow the trade step by step.';

  @override
  String get walkthroughTakeBody2 =>
      'You\'ll be able to check your counterpart\'s profile, chat securely, and complete the trade with ease.';

  @override
  String get walkthroughMakeTitle => 'Can\'t find what you need?';

  @override
  String get walkthroughMakeBody1 =>
      'You can also create your own order and wait for someone to take it.';

  @override
  String get walkthroughMakeBody2 =>
      'Set the amount and your preferred payment method. Mostro handles the rest.';

  @override
  String get walkthroughNext => 'Next';

  @override
  String walkthroughStepCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String walkthroughStepSemantics(int current, int total) {
    return 'Step $current of $total';
  }

  @override
  String get tabBuyBtc => 'Buy BTC';

  @override
  String get tabSellBtc => 'Sell BTC';

  @override
  String get filterButtonLabel => 'Filter';

  @override
  String filtersActiveCount(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString filters on',
      one: '1 filter on',
    );
    return '$_temp0';
  }

  @override
  String get noOrdersAvailable => 'No orders available';

  @override
  String get justNow => 'Just now';

  @override
  String minutesAgo(int m) {
    return '${m}m ago';
  }

  @override
  String hoursAgo(int h) {
    return '${h}h ago';
  }

  @override
  String daysAgo(int d) {
    return '${d}d ago';
  }

  @override
  String get invoiceRejected =>
      'The node rejected this invoice. Check its amount and expiry and add a new one.';

  @override
  String get invoiceCopied => 'Invoice copied';

  @override
  String get submitButtonLabel => 'Submit';

  @override
  String get orderAlreadyTaken => 'Order has already been taken';

  @override
  String get nodeProtocolUnsupported =>
      'This Mostro node uses a protocol version this app does not support. Pick another node in Settings, or check for an app update';

  @override
  String get nodeCapabilitiesUnknown =>
      'Still checking what the selected Mostro node supports. Try again in a moment';

  @override
  String get tradeOnOtherNode =>
      'This trade belongs to another Mostro node. Switch to that node to act on it';

  @override
  String get mostroMaintenanceMode =>
      'The Mostro node you are connected to is under maintenance. Try again later, or connect to a different Mostro node in Settings';

  @override
  String get storageUnavailable =>
      'The app cannot create or take orders while its local database is unavailable. Restart the app and try again';

  @override
  String get rangeOrderWithSats =>
      'A range order can\'t have a fixed sats amount: it is priced at market when taken.';

  @override
  String get orderIdCopied => 'Order ID copied';

  @override
  String get comingSoonMessage => 'Coming soon';

  @override
  String get tradeStatusCompleted => 'Completed';

  @override
  String get tradeStatusCancelled => 'Cancelled';

  @override
  String get tradeStatusDisputed => 'Disputed';

  @override
  String get accountScreenTitle => 'Account';

  @override
  String get secretWordsTitle => 'Secret Words';

  @override
  String get privacyCardTitle => 'Privacy';

  @override
  String get reputationMode => 'Reputation Mode';

  @override
  String get reputationModeSubtitle =>
      'Your trades count toward your public reputation';

  @override
  String get fullPrivacyMode => 'Full Privacy Mode';

  @override
  String get fullPrivacyModeSubtitle =>
      'Each trade uses a new identity, no reputation';

  @override
  String get generateNewUserButton => 'Generate New User';

  @override
  String get importMostroUserButton => 'Import Mostro User';

  @override
  String get generateNewUserDialogTitle => 'Generate New User?';

  @override
  String get generateNewUserDialogContent =>
      'This will create a brand-new identity. Your current secret words will no longer work — make sure they are backed up before continuing.';

  @override
  String get continueButtonLabel => 'Continue';

  @override
  String get importMnemonicDialogTitle => 'Import secret words';

  @override
  String get importMnemonicHintText => 'Enter your 12 secret words';

  @override
  String get importButtonLabel => 'Import';

  @override
  String get refreshUserDialogTitle => 'Refresh User?';

  @override
  String get refreshUserDialogContent =>
      'This will re-fetch your trades and orders from the Mostro node. Use this if you think your data is out of sync or orders are missing.';

  @override
  String get hideButtonLabel => 'Hide';

  @override
  String get showWordsButton => 'Show words';

  @override
  String get settingsScreenTitle => 'Settings';

  @override
  String get languageSettingTitle => 'Language';

  @override
  String get appearanceSettingTitle => 'Appearance';

  @override
  String get appearanceDialogTitle => 'Appearance';

  @override
  String get allCurrencies => 'All currencies';

  @override
  String get lightningAddressSettingTitle => 'Lightning Address';

  @override
  String get nwcWalletSettingTitle => 'NWC Wallet';

  @override
  String get relaysSettingTitle => 'Relays';

  @override
  String get pushNotificationsSettingTitle => 'Push Notifications';

  @override
  String get logReportSettingTitle => 'Log Report';

  @override
  String get mostroNodeSettingTitle => 'Mostro Node';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeLight => 'Light';

  @override
  String get themeSystemDefault => 'System default';

  @override
  String get lightningAddressDialogTitle => 'Lightning Address';

  @override
  String get lightningAddressHintText => 'user@domain.com';

  @override
  String get invalidLightningAddressFormat => 'Must be in user@domain format';

  @override
  String get clearButtonLabel => 'Clear';

  @override
  String get saveButtonLabel => 'Save';

  @override
  String get scanQrCodeTitle => 'Scan QR Code';

  @override
  String get selectLanguageTitle => 'Select Language';

  @override
  String get selectCurrencyDialogTitle => 'Select Currency';

  @override
  String get addRelayDialogTitle => 'Add Relay';

  @override
  String get addButtonLabel => 'Add';

  @override
  String get relayHintText => 'wss://relay.example.com';

  @override
  String get relayErrorMustStartWithWss => 'Must start with wss://';

  @override
  String get relayErrorUrlTooShort => 'URL is too short';

  @override
  String get relayErrorDuplicate => 'Relay already in list';

  @override
  String get pasteQrCodeHeading => 'Paste QR Code Content';

  @override
  String get pasteButtonLabel => 'Paste';

  @override
  String get clipboardEmptyError => 'Clipboard is empty';

  @override
  String get enterValueError => 'Please enter a value';

  @override
  String get trustedBadgeLabel => 'Trusted';

  @override
  String get confirmButtonLabel => 'Confirm';

  @override
  String get selectMostroNode => 'Choose a node';

  @override
  String get addCustomNode => 'Add your own node';

  @override
  String get nodePubkeyFieldLabel => 'Public key';

  @override
  String get nodePubkeyFieldHint => '64-char hex or npub…';

  @override
  String get nodeNameOptionalLabel => 'Name (optional)';

  @override
  String get invalidPubkeyFormat =>
      'Enter a valid public key (64-char hex or npub)';

  @override
  String get privateKeyNotAllowed =>
      'That is a private key — never share it. Enter the node\'s public key instead';

  @override
  String get nodeAlreadyExists => 'This node is already in the list';

  @override
  String get nodeAddedSuccess => 'Node added';

  @override
  String nodeSwitchedSuccess(String nodeName) {
    return 'Now using $nodeName';
  }

  @override
  String get errorSwitchingNode => 'Failed to switch node';

  @override
  String get cannotRemoveActiveNode =>
      'The active node can\'t be removed — switch to another node first';

  @override
  String get deleteCustomNodeTitle => 'Remove node';

  @override
  String get deleteCustomNodeMessage =>
      'Remove this custom node from your list?';

  @override
  String get deleteCustomNodeConfirm => 'Remove';

  @override
  String get nodeRemovedSuccess => 'Node removed';

  @override
  String get nodeStorageUnavailable =>
      'The local database isn\'t ready. Restart the app and try again';

  @override
  String nodeSelectorSubtitle(String code) {
    return 'Orders and currencies for $code, your currency';
  }

  @override
  String get nodeSelectorSubtitleNoCurrency => 'Open orders on each node';

  @override
  String nodeMissingCurrencyChip(String code) {
    return 'NO $code';
  }

  @override
  String get nodeOrdersNowLabel => 'orders now';

  @override
  String get nodeNoOrdersLabel => 'no orders';

  @override
  String nodeOrdersInCurrency(int count, String code) {
    return '· $count in $code';
  }

  @override
  String get nodeFeeLabel => 'fee';

  @override
  String get nodeFeeTooltip => 'Mostro splits the fee between both parties.';

  @override
  String get nodePerTradeLabel => 'per trade';

  @override
  String get nodeCustodyLightning => 'Lightning custody';

  @override
  String nodeCustodyCashu(String mint) {
    return 'Cashu custody · $mint';
  }

  @override
  String get nodeCustodyUnknown => 'Custody —';

  @override
  String nodeBondPct(String pct) {
    return 'Deposit $pct%';
  }

  @override
  String get nodeBondNone => 'No deposit';

  @override
  String nodeStatusOnline(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString orders',
      one: '1 order',
    );
    return 'Online · $_temp0';
  }

  @override
  String get nodeStatusNoUsefulOrders => 'No orders in your currencies';

  @override
  String nodeStatusUnreachable(String ago) {
    return 'Not responding · last seen $ago';
  }

  @override
  String get nodeStatusUnreachableNoSignal => 'Not responding';

  @override
  String get nodeChoiceSubtitle =>
      'Select the Mostro node you want to trade on';

  @override
  String get nodeOperatorDisclaimer =>
      'The Mostro development team is not responsible for how node operators use the platform. Each operator controls their own Mostro node and is solely responsible for their actions. By using Mostro, you accept full responsibility for your trades and acknowledge that the development team has no control over individual node operators.';

  @override
  String get nodeChoiceConfirm => 'Use this node';

  @override
  String get nodeChoiceSaveFailed => 'Couldn\'t save your choice. Try again.';

  @override
  String get nodeVerifyKeyWarning =>
      'Verify the key with the operator. A fake node can see your orders.';

  @override
  String get nodeInvalidPubkeyShort => 'This is not a valid public key.';

  @override
  String get nodeNameFieldHint => 'Local Mostro';

  @override
  String get nodePubkeyCopied => 'Key copied';

  @override
  String get nodeNotSelectableOffline => 'This node is not responding';

  @override
  String get nodeStatsLoading => 'Loading node data';

  @override
  String get nodeSwitchConfirmTitle => 'Change node?';

  @override
  String nodeSwitchConfirmBody(String currentNode, String newNode) {
    return 'You have a trade in progress on $currentNode. It stays there; the order book will now show $newNode.';
  }

  @override
  String get nodeSwitchConfirmAction => 'Change node';

  @override
  String get nodeTradesCheckFailed => 'Couldn\'t check your trades. Try again.';

  @override
  String get notificationsScreenTitle => 'Notifications';

  @override
  String get markAllAsReadMenuItem => 'Mark all as read';

  @override
  String get clearAllMenuItem => 'Clear all';

  @override
  String get youMustBackUpYourAccount => 'You must back up your account';

  @override
  String get tapToViewAndSaveSecretWords =>
      'Tap to view and save your secret words.';

  @override
  String get noNotifications => 'No notifications';

  @override
  String get markAsRead => 'Mark as read';

  @override
  String get deleteNotificationLabel => 'Delete';

  @override
  String get rateScreenHeader => 'RATE';

  @override
  String get successfulOrder => 'Successful order';

  @override
  String get closeRatingButton => 'CLOSE';

  @override
  String get aboutScreenTitle => 'About';

  @override
  String get linkCopiedToClipboard => 'Link copied to clipboard';

  @override
  String get pubkeyLabel => 'Pubkey';

  @override
  String get relaysLabel => 'Relays';

  @override
  String get footerTagline => 'Open-source. Non-custodial. Private.';

  @override
  String get drawerTitle => 'Mostro';

  @override
  String get drawerTagline => 'P2P exchange';

  @override
  String get drawerStageBadge => 'Beta';

  @override
  String drawerVersion(String version) {
    return 'Version $version';
  }

  @override
  String get drawerAccountMenuItem => 'Account';

  @override
  String get drawerSettingsMenuItem => 'Settings';

  @override
  String get drawerAboutMenuItem => 'About';

  @override
  String get navOrderBook => 'Order Book';

  @override
  String get navMyTrades => 'My Trades';

  @override
  String get navChat => 'Chat';

  @override
  String get loadingOrders => 'Loading orders…';

  @override
  String get errorLoadingOrders =>
      'Could not load orders. Please check your connection.';

  @override
  String get retry => 'Retry';

  @override
  String disableRelayLabel(String url) {
    return 'Disable relay $url';
  }

  @override
  String enableRelayLabel(String url) {
    return 'Enable relay $url';
  }

  @override
  String get removeRelayTooltip => 'Remove relay';

  @override
  String get relayAddFailed => 'Failed to add relay';

  @override
  String get relayRemoveFailed => 'Failed to remove relay';

  @override
  String get backupRitualSecondFailureMessage =>
      'That was incorrect again. Please review and back up your secret words, then verify from the start.';

  @override
  String get cancelTradeDialogTitle => 'Cancel trade?';

  @override
  String get cancelTradeDialogContent =>
      'Requesting a cooperative cancel. Your counterpart must also agree for the trade to be fully cancelled.';

  @override
  String get cancelTradeDialogContentNotStarted =>
      'The trade has not started yet, so it is cancelled right away. Your counterpart does not need to agree.';

  @override
  String get cancelTradeDialogContentMaybeStarted =>
      'If the trade has not started yet, it is cancelled right away. If it has, your counterpart must also agree.';

  @override
  String get noButtonLabel => 'No';

  @override
  String get yesButtonLabel => 'Yes';

  @override
  String get yesCancelButtonLabel => 'Yes, cancel';

  @override
  String get cancelRequestSent => 'Cancel request sent';

  @override
  String get cancelRequestFailed => 'Failed to cancel. Please try again.';

  @override
  String get tradeCardCancelRequestedByMeTitle => 'Cancel requested';

  @override
  String get tradeCardCancelRequestedByMeMessage =>
      'You asked to cancel this trade. It stays open until your counterpart also cancels. If they do not respond, you can open a dispute.';

  @override
  String get tradeCardCancelRequestedByPeerTitle =>
      'Your counterpart wants to cancel';

  @override
  String get tradeCardCancelRequestedByPeerMessage =>
      'They asked to cancel this trade. Accept to end it with no funds moved, or keep trading.';

  @override
  String get tradeCancelRequestedByMeNotice =>
      'You asked to cancel this trade. It stays open until your counterpart also cancels. If they do not respond, you can open a dispute.';

  @override
  String get tradeCancelRequestedByPeerNotice =>
      'Your counterpart asked to cancel this trade. Accept to end it with no funds moved, or keep trading.';

  @override
  String get acceptCancelButton => 'Accept cancel';

  @override
  String get cancelTradeDialogContentAccept =>
      'Your counterpart asked to cancel. Cancelling now ends the trade for both of you and no funds are moved.';

  @override
  String get fiatSentFailed =>
      'Failed to mark the payment as sent. Please try again.';

  @override
  String get releaseFailed => 'Failed to release. Please try again.';

  @override
  String get releasePendingLabel => 'Releasing… waiting for the node';

  @override
  String get releaseSentNotice =>
      'Release sent. The node can take up to a minute to confirm it.';

  @override
  String get releaseUnconfirmedNotice =>
      'The node has not confirmed the release yet. If the order doesn\'t update, you can release again.';

  @override
  String get cancelTradeButton => 'Cancel trade';

  @override
  String get payHoldInvoiceButton => 'Pay invoice';

  @override
  String get openDisputeButton => 'Open dispute';

  @override
  String get releaseSatsButton => 'Release sats';

  @override
  String get confirmReleaseSatsButton => 'Confirm & release sats';

  @override
  String get shareOrderButton => 'Share order';

  @override
  String get orderPillYouAreSelling => 'YOU ARE SELLING';

  @override
  String get orderPillYouAreBuying => 'YOU ARE BUYING';

  @override
  String get myOrderSellTitle => 'Your sell order';

  @override
  String get myOrderBuyTitle => 'Your buy order';

  @override
  String get cancelOrderFailed => 'Failed to cancel order. Please try again.';

  @override
  String get closeButtonLabel => 'Close';

  @override
  String get copyButtonLabel => 'Copy';

  @override
  String get orderStatusWaitingForTaker => 'Waiting for a taker';

  @override
  String get orderStatusInProgress => 'In progress';

  @override
  String get orderStatusExpired => 'Expired';

  @override
  String get copyOrderIdTooltip => 'Copy order ID';

  @override
  String get orderNotFoundTitle => 'Order Not Found';

  @override
  String get orderNotFoundMessage => 'This order is no longer available.';

  @override
  String get orderCancelledSuccess => 'Order cancelled successfully.';

  @override
  String get aboutDocumentationTitle => 'Documentation';

  @override
  String get aboutMostroNodeTitle => 'Mostro Node';

  @override
  String get aboutVersionLabel => 'Version';

  @override
  String get aboutCommitHashLabel => 'Commit Hash';

  @override
  String get aboutLicenseLabel => 'License';

  @override
  String get aboutLicenseName => 'AGPLv3+';

  @override
  String get aboutGithubRepoName => 'MostroP2P/app';

  @override
  String get aboutCopiedToClipboard => 'Copied to clipboard';

  @override
  String get aboutLicenseDialogTitle => 'GNU Affero General Public License v3';

  @override
  String get aboutNodeLoadingText => 'Loading node information…';

  @override
  String get aboutNodeUnavailable => 'Node information unavailable';

  @override
  String get aboutNodeRetry => 'Retry';

  @override
  String get aboutLightningNetworkSection => 'Lightning Network';

  @override
  String get aboutFiatCurrenciesLabel => 'Fiat Currencies';

  @override
  String get aboutPriceSourceLabel => 'Source';

  @override
  String get aboutPriceSection => 'Price';

  @override
  String get aboutPriceSourcesFootnote =>
      'Price sources are the providers behind the rates the node publishes now; one that failed or was set aside is not listed.';

  @override
  String get aboutMostroVersionLabel => 'Mostro Version';

  @override
  String get aboutMostroCommitLabel => 'Mostro Commit';

  @override
  String get aboutHoldInvoiceExpLabel => 'Hold Invoice Expiration';

  @override
  String get aboutHoldInvoiceCltvLabel => 'Hold Invoice CLTV';

  @override
  String get aboutInvoiceExpWindowLabel => 'Invoice Expiration Window';

  @override
  String get aboutProofOfWorkLabel => 'Proof of Work';

  @override
  String get aboutMaxOrdersPerResponseLabel => 'Max Orders/Response';

  @override
  String get aboutLndVersionLabel => 'LND Version';

  @override
  String get aboutSupportedChainsLabel => 'Supported Chains';

  @override
  String get aboutSupportedNetworksLabel => 'Supported Networks';

  @override
  String get aboutSatoshisSuffix => 'Satoshis';

  @override
  String get aboutBlocksSuffix => 'blocks';

  @override
  String get aboutFiatCurrenciesAll => 'All';

  @override
  String get aboutAntiAbuseBondSection => 'Anti-abuse Deposit';

  @override
  String get aboutBondEnabledValue => 'Enabled';

  @override
  String get aboutBondDisabledValue => 'Disabled';

  @override
  String get aboutBondUnsupportedValue => 'Not supported';

  @override
  String get aboutBondStatusLabel => 'Deposit status';

  @override
  String get aboutBondAppliesToLabel => 'Applies to';

  @override
  String get aboutBondAppliesToTakers => 'Takers';

  @override
  String get aboutBondAppliesToMakers => 'Makers';

  @override
  String get aboutBondAppliesToBoth => 'Makers and takers';

  @override
  String get aboutBondAmountLabel => 'Deposit amount';

  @override
  String get aboutBondBaseAmountLabel => 'Minimum deposit';

  @override
  String get aboutBondNodeShareLabel => 'Node\'s share of a forfeited deposit';

  @override
  String get aboutBondSlashOnTimeoutLabel => 'Forfeited when a step times out';

  @override
  String get aboutBondClaimWindowLabel => 'Payout claim window';

  @override
  String aboutBondClaimWindowValue(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString days',
      one: '$countString day',
    );
    return '$_temp0';
  }

  @override
  String get openDisputeFailed => 'Could not open dispute. Please try again.';

  @override
  String get openDisputeTitle => 'Open dispute';

  @override
  String get openDisputeConfirmation =>
      'Are you sure you want to open a dispute? This escalates the trade to a dispute resolver and cannot be undone.';

  @override
  String get disputeAlreadyOpen => 'A dispute for this trade is already open.';

  @override
  String get tradeNotDisputable =>
      'A dispute can only be opened once the funds are locked for this trade.';

  @override
  String get tradeWaitingInvoiceBuyerInstruction =>
      'Submit your Lightning invoice so the seller can lock the funds.';

  @override
  String get tradeWaitingInvoiceSellerInstruction =>
      'Waiting for the buyer to submit their Lightning invoice.';

  @override
  String get tradeWaitingPaymentSellerInstruction =>
      'Pay the invoice to lock the sats and start the trade.';

  @override
  String get tradeLoadError => 'An error occurred while loading the trade.';

  @override
  String get tradeWaitingForHoldInvoice => 'Waiting for the invoice…';

  @override
  String get shareButtonLabel => 'Share';

  @override
  String get shareFailed => 'Could not share the invoice';

  @override
  String get waitingForPaymentConfirmation =>
      'Waiting for payment confirmation…';

  @override
  String get orderNoLongerActive => 'This order is no longer active';

  @override
  String get tradeNoLongerYours => 'You\'re no longer part of this trade';

  @override
  String get sessionTimeoutMessage =>
      'No response received. Check your connection and try again later.';

  @override
  String get noRelayAcceptedMessage =>
      'No relay accepted your message. Check your relays in Settings and try again';

  @override
  String get noIdentityFoundMessage =>
      'No identity found — try restarting the app.';

  @override
  String get failedToLoadSecretWordsMessage =>
      'Failed to load secret words. Please try again.';

  @override
  String get privacyModesInfoTitle => 'Privacy Modes';

  @override
  String get privacyModesInfoContent =>
      'Reputation mode lets others see your successful trades.\n\nFull privacy mode keeps your activity completely anonymous — no reputation is built.';

  @override
  String get failedToGenerateIdentityMessage =>
      'Failed to generate identity. Please try again.';

  @override
  String get pendingWipeBannerTitle =>
      'Previous user\'s data is still on this device';

  @override
  String get pendingWipeBannerBody =>
      'Deleting the previous identity could not remove its trades and chats from this device. The app will retry the next time a new user is generated or imported.';

  @override
  String get pendingWipeBlockedMessage =>
      'The previous user\'s data could not be removed from this device, so the new user was not set up and your current user was kept. Please try again.';

  @override
  String get wipeNotRecordedMessage =>
      'The current user could not be removed safely, so nothing was changed. Please try again.';

  @override
  String get identitySwapStorageUnavailableMessage =>
      'This device\'s storage is not available right now, so the current user was kept and nothing was changed. Restart the app and try again.';

  @override
  String get identitySwapPreviousNotReloadedMessage =>
      'The new user was not set up, and the current user could not be fully restored. Restart the app to load it again.';

  @override
  String get invalidMnemonicMessage =>
      'Invalid secret words. Please check your words and try again.';

  @override
  String get enterValidMnemonicError => 'Enter your 12 secret words.';

  @override
  String get orderBookRefreshedMessage => 'Order book refreshed';

  @override
  String get refreshFailedMessage => 'Refresh failed';

  @override
  String get refreshButtonLabel => 'Refresh';

  @override
  String get okButtonLabel => 'OK';

  @override
  String get moreInformationTooltip => 'More information';

  @override
  String get backedUpBadgeLabel => 'Backed up';

  @override
  String get backupBannerTitle => 'Secure your reputation';

  @override
  String get backupBannerSubtitle =>
      'Back up your 12 words — it takes 60 seconds.';

  @override
  String get failedToSaveBackupStatusMessage =>
      'Failed to save backup status. Please try again.';

  @override
  String get backupRitualStep1Title => 'Step 1 of 3 · Write down your words';

  @override
  String get backupRitualStep2Title => 'Step 2 of 3 · Verify';

  @override
  String get backupRitualStep3Title => 'Step 3 of 3 · Done';

  @override
  String get backupRitualWarningTitle => 'Write them on paper. ';

  @override
  String get backupRitualWarningBody =>
      'Don\'t store them in photos, screenshots or the cloud — anyone with these 12 words can steal your reputation.';

  @override
  String get wordsHiddenOnLeaveNote =>
      'They will be hidden when you leave this screen';

  @override
  String get wroteThemDownVerifyButton => 'I wrote them down — verify';

  @override
  String get tapCorrectWordsTitle => 'Tap the correct words';

  @override
  String get verifyInstructionsBody =>
      'We ask for 3 at random. If you get them right, we know they\'re safely written down.';

  @override
  String optionsForWordLabel(int number) {
    return 'OPTIONS FOR WORD #$number';
  }

  @override
  String get wrongPickMessage => 'Not quite — check your paper and try again.';

  @override
  String get allWordsCorrectMessage => 'All 3 words correct';

  @override
  String get reviewWordsButton => 'View words';

  @override
  String get accountBackedUpTitle => 'Your account is backed up';

  @override
  String get accountBackedUpBody =>
      'Your reputation is safe. If you ever lose your phone, restore your account with your 12 words.';

  @override
  String wordNumberLabel(int number) {
    return 'Word #$number';
  }

  @override
  String get backupTriggerBody =>
      'Your reputation lives in a key only you hold. If you lose your phone, you lose that reputation — ';

  @override
  String get backupTriggerBodyHighlight => 'back it up in 60 seconds.';

  @override
  String get backupStepWriteDown => 'Write your 12 words down on paper';

  @override
  String get backupStepVerifyRandom => 'We ask for 3 at random to confirm';

  @override
  String get backupStepSecured => 'Done — your account is secured';

  @override
  String get backupNowButton => 'Back up now';

  @override
  String get backupLaterButton => 'I\'ll do it later';

  @override
  String get nwcConnectionFailedMessage =>
      'Connection failed. Please check your NWC URI and try again.';

  @override
  String get clipboardInvalidNwcUriMessage =>
      'Clipboard does not contain a valid NWC URI.';

  @override
  String get scanQrButtonLabel => 'Scan QR';

  @override
  String get connectButtonLabel => 'Connect';

  @override
  String get walletDisconnectedMessage => 'Wallet disconnected';

  @override
  String get relayLabel => 'Relay';

  @override
  String get disconnectButtonLabel => 'Disconnect';

  @override
  String relaysMoreSuffix(int count) {
    return '(+$count more)';
  }

  @override
  String get chooseNotificationEventsSubtitle =>
      'Choose which events show a notification in the app.';

  @override
  String get notifTradeUpdatesTitle => 'Trade updates';

  @override
  String get notifTradeUpdatesSubtitle =>
      'Status changes in your active trades';

  @override
  String get notifNewMessagesTitle => 'New messages';

  @override
  String get notifNewMessagesSubtitle => 'Messages from your trade counterpart';

  @override
  String get notifPaymentAlertsTitle => 'Payment alerts';

  @override
  String get notifPaymentAlertsSubtitle =>
      'Lightning payment confirmations and failures';

  @override
  String get notifDisputeUpdatesTitle => 'Dispute updates';

  @override
  String get notifDisputeUpdatesSubtitle =>
      'Resolver actions and dispute resolutions';

  @override
  String get notifAnnouncementsTitle => 'Announcements';

  @override
  String get notifAnnouncementsSubtitle =>
      'Releases, outages and relay changes, signed by the Mostro project';

  @override
  String get announcementsGroupSubtitle =>
      'Announcements are read from the relays and never answered: nothing about you is sent.';

  @override
  String get announcementLevelInfo => 'Announcement';

  @override
  String get announcementLevelWarning => 'Notice';

  @override
  String get announcementLevelCritical => 'Security update';

  @override
  String get announcementOpenLink => 'Open link';

  @override
  String get notificationsBellCritical =>
      'Notifications, a security update is unread';

  @override
  String get searchCurrenciesHint => 'Search currencies…';

  @override
  String get noCurrenciesFoundMessage => 'No currencies found';

  @override
  String get shareLogsTooltip => 'Share logs';

  @override
  String get noLogsToShareTooltip => 'No logs to share';

  @override
  String get noLogEntriesMessage => 'No log entries';

  @override
  String get failedToShareLogsMessage => 'Failed to share logs';

  @override
  String get logReportShareHeading => 'Mostro log report';

  @override
  String get tradeFilterAll => 'All';

  @override
  String get tradeFilterPending => 'Pending';

  @override
  String get tradeFilterWaitingInvoice => 'Waiting Invoice';

  @override
  String get tradeFilterWaitingPayment => 'Waiting Payment';

  @override
  String get tradeFilterActive => 'Active';

  @override
  String get tradeFilterFiatSent => 'Fiat Sent';

  @override
  String get tradeFilterSuccess => 'Success';

  @override
  String get tradeFilterCanceled => 'Cancelled';

  @override
  String get tradeFilterDispute => 'Dispute';

  @override
  String get menuTooltip => 'Menu';

  @override
  String get noTradesTitle => 'No trades';

  @override
  String get noTradesSubtitle =>
      'Your active and completed trades will appear here.';

  @override
  String get couldNotLoadTradesMessage => 'Could not load trades';

  @override
  String get sellingBitcoin => 'Selling Bitcoin';

  @override
  String get buyingBitcoin => 'Buying Bitcoin';

  @override
  String get tradeInstructionActiveBuyer =>
      'Once you have sent the money, mark it below. Only open a dispute if the seller stops responding.';

  @override
  String get tradeInstructionFiatSentBuyer =>
      'Payment marked as sent. Waiting for the seller to confirm receipt and release your sats.';

  @override
  String get tradeInstructionActiveSeller =>
      'Contact the buyer with payment instructions via the chat above.';

  @override
  String get tradeInstructionFiatSentSeller =>
      'The buyer has confirmed they sent the payment. Once you verify receipt, release the sats.';

  @override
  String get tradeInstructionDisputed =>
      'A dispute resolver has been assigned. They will contact you through the app.';

  @override
  String get tradeInstructionPending =>
      'Your order is published and waiting for a counterpart to take it. You can cancel it at any time.';

  @override
  String get tradeInstructionCancelled =>
      'This trade was cancelled. No funds were exchanged.';

  @override
  String get tradeInstructionInProgress => 'Trade in progress.';

  @override
  String get theAgreedAmount => 'the agreed amount';

  @override
  String get tradeHeadlinePending => 'Waiting for someone to take your order';

  @override
  String get tradeHeadlineInProgress => 'The trade is being set up';

  @override
  String get tradeHeadlineWaitingInvoiceBuyer =>
      'Share a Lightning invoice to receive your sats';

  @override
  String get tradeHeadlineWaitingInvoiceSeller =>
      'Waiting for the buyer to share an invoice';

  @override
  String get tradeHeadlineWaitingPaymentBuyer =>
      'Waiting for the seller to lock the sats';

  @override
  String get tradeHeadlineWaitingPaymentSeller =>
      'Pay the invoice to lock the sats';

  @override
  String tradeHeadlineActiveBuyer(String amount) {
    return 'Send $amount to the seller';
  }

  @override
  String tradeHeadlineActiveSeller(String amount) {
    return 'Waiting for the buyer to send $amount';
  }

  @override
  String get tradeHeadlineFiatSentBuyer =>
      'Waiting for the seller to release your sats';

  @override
  String tradeHeadlineFiatSentSeller(String amount) {
    return 'Confirm you received $amount';
  }

  @override
  String get tradeHeadlineDisputed => 'Dispute in progress';

  @override
  String get tradeHeadlineCancelled => 'Order cancelled';

  @override
  String get tradeHeadlineLoading => 'Loading trade…';

  @override
  String get tradeTimerPendingConsequence =>
      'If it expires, the order is removed from the book. It won\'t affect your reputation.';

  @override
  String get tradeTimerExpiryBackToBook =>
      'If it expires, the order goes back to the book.';

  @override
  String get tradeTimerExpiryCancelled =>
      'If it expires, the order is cancelled.';

  @override
  String get tradeTimerEscrowCancels =>
      'Approximate time. If it runs out, Mostro cancels the trade.';

  @override
  String get tradeTimerEscrowDisputes =>
      'Approximate time. If it runs out, Mostro opens a dispute.';

  @override
  String get tradeTimerEscrowCancellingBuyer =>
      'Mostro is about to cancel the trade and return the sats to the seller.';

  @override
  String get tradeTimerEscrowCancellingSeller =>
      'Mostro is about to cancel the trade. Your sats stay in your wallet.';

  @override
  String get tradeTimerEscrowDisputing => 'A dispute is about to be opened.';

  @override
  String get tradeStepOrderTaken => 'Order taken';

  @override
  String get tradeStepWaitingTaker => 'Waiting for a taker';

  @override
  String get tradeStepInvoiceBuyer => 'The seller locks the sats';

  @override
  String get tradeStepInvoiceSeller => 'You lock the sats';

  @override
  String get tradeStepFiatBuyer => 'You send the payment';

  @override
  String get tradeStepFiatSeller => 'The buyer sends the payment';

  @override
  String get tradeStepReleaseBuyer => 'The seller releases your sats';

  @override
  String get tradeStepReleaseSeller => 'You confirm and release the sats';

  @override
  String get tradeStepPayoutBuyer => 'Mostro sends you your sats';

  @override
  String get tradeStepRate => 'Rate the trade';

  @override
  String tradeCreatedAtLabel(String date) {
    return 'created $date';
  }

  @override
  String stepIndicator(int current, int total) {
    return 'STEP $current OF $total';
  }

  @override
  String get addLightningInvoiceButton => 'Add Lightning invoice';

  @override
  String get viewDisputeButton => 'View dispute';

  @override
  String get yourTradeTimelineTitle => 'YOUR TRADE';

  @override
  String get messageSendFailed => 'Failed to send message. Please try again.';

  @override
  String get invalidTradeId => 'Invalid trade ID';

  @override
  String get selectForDetailsHint => 'Select ℹ or 👤\nfor details';

  @override
  String noMessagesYet(String handle) {
    return 'No messages yet.\nSay hello to $handle!';
  }

  @override
  String get exchangeInfoTooltip => 'Trade Info';

  @override
  String get userInfoTooltip => 'User Info';

  @override
  String chattingWith(String handle) {
    return 'You are chatting with $handle';
  }

  @override
  String get unknownPeerHandle => 'Unknown';

  @override
  String get messagesTab => 'Messages';

  @override
  String get disputesTab => 'Disputes';

  @override
  String get tradeInformationTitle => 'Trade Information';

  @override
  String get orderIdLabel => 'Order ID';

  @override
  String get fiatAmountLabel => 'Fiat Amount';

  @override
  String get satsAmountLabel => 'Sats Amount';

  @override
  String get peerReputationUnavailable =>
      'This user\'s reputation is not available';

  @override
  String get statusLabel => 'Status';

  @override
  String get paymentMethodLabel => 'Payment Method';

  @override
  String get createdLabel => 'Created';

  @override
  String get userInformationTitle => 'User Information';

  @override
  String get fileTypeVideo => 'Video';

  @override
  String get fileTypeImage => 'Image';

  @override
  String get fileTypeArchive => 'Archive';

  @override
  String get fileTypeFile => 'File';

  @override
  String buyingSatsAmount(String sats) {
    return 'Buying $sats sats';
  }

  @override
  String sellingSatsAmount(String sats) {
    return 'Selling $sats sats';
  }

  @override
  String get viewOrderLink => 'View order';

  @override
  String timeLeftLabel(String time) {
    return '$time left';
  }

  @override
  String get invoiceNoLongerExpected =>
      'This order is no longer waiting for an invoice. Updating its status…';

  @override
  String get invoiceAwaitingNode =>
      'Sent. The node hasn\'t answered yet — you\'ll be taken to the trade as soon as it does.';

  @override
  String get invoiceAwaitingNodeLong =>
      'Still no answer from the node. If the trade doesn\'t move on, send it again.';

  @override
  String get invoiceSubmitInFlight =>
      'An invoice for this order is already being sent. Wait for the reply.';

  @override
  String get waitingForTradeAmount =>
      'Waiting for trade amount — please try again shortly.';

  @override
  String get fetchingTradeAmount => 'Fetching trade amount…';

  @override
  String get enterInvoiceManually => 'Enter invoice manually';

  @override
  String get rangeAmountTakeAction => 'Take order';

  @override
  String orderAmountOutOfRange(int min, int max) {
    return 'Amount must be between $min and $max sats for this Mostro node';
  }

  @override
  String orderCurrencyNotAccepted(String currency) {
    return 'This Mostro node does not accept $currency. Pick another currency';
  }

  @override
  String orderAmountOutOfRangeFiat(int min, int max, String currency) {
    return 'Amount must be between $min and $max $currency for this Mostro node';
  }

  @override
  String get priceTypeMarket => 'Market';

  @override
  String get priceTypeFixed => 'Fixed';

  @override
  String get priceTypeInfoTooltip => 'Price type info';

  @override
  String get premiumSectionLabel => 'Premium';

  @override
  String get fixedPriceRangeNotAvailable =>
      'Fixed price isn\'t available for range orders. Turn off the range to use a fixed price.';

  @override
  String get priceTypesDialogTitle => 'Price Types';

  @override
  String get priceTypesDialogContent =>
      'Market Price: Your order follows the market rate, with the premium or discount you set.\n\nFixed Price: You set the exact sats amount; it does not follow the market.';

  @override
  String get newOrderTitle => 'New order';

  @override
  String get amountSectionSell => 'How much you sell';

  @override
  String get amountSectionBuy => 'How much you buy';

  @override
  String get amountModeSingle => 'Single';

  @override
  String get amountModeRange => 'Range';

  @override
  String get amountMinLabel => 'Minimum';

  @override
  String get amountMaxLabel => 'Maximum';

  @override
  String paymentMethodsChosenCount(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString selected',
      one: '1 selected',
      zero: 'none selected',
    );
    return '$_temp0';
  }

  @override
  String get paymentMethodAdd => 'Add';

  @override
  String get paymentMethodSearchHint => 'Search methods';

  @override
  String get customPaymentMethodLabel => 'Custom payment method';

  @override
  String get priceSectionTitle => 'Price';

  @override
  String premiumSellAbove(String premium) {
    return 'You sell $premium% above market price';
  }

  @override
  String premiumSellBelow(String premium) {
    return 'You sell $premium% below market';
  }

  @override
  String premiumBuyBelow(String premium) {
    return 'You pay $premium% less than market';
  }

  @override
  String premiumBuyAbove(String premium) {
    return 'You pay $premium% more';
  }

  @override
  String get premiumExactMarket => 'Exact market price';

  @override
  String get fixedPriceNote =>
      'At a fixed price the order does not follow the market: the sats amount stays exactly as you write it.';

  @override
  String get previewHintNoAmount =>
      'Write an amount and you\'ll see here how the order looks.';

  @override
  String previewSellMarket(String amount, String premium, String active) {
    return 'You sell BTC for $amount at market price $premium$active';
  }

  @override
  String previewSellMarketExact(String amount, String active) {
    return 'You sell BTC for $amount at market price$active';
  }

  @override
  String previewBuyMarket(String amount, String premium, String active) {
    return 'You buy BTC for $amount at market price $premium$active';
  }

  @override
  String previewBuyMarketExact(String amount, String active) {
    return 'You buy BTC for $amount at market price$active';
  }

  @override
  String previewSellFixed(String sats, String amount, String active) {
    return 'You sell $sats for $amount at a fixed price$active';
  }

  @override
  String previewBuyFixed(String sats, String amount, String active) {
    return 'You buy $sats for $amount at a fixed price$active';
  }

  @override
  String previewActiveSuffix(String hours) {
    return ' · active $hours';
  }

  @override
  String get publishOrder => 'Publish order';

  @override
  String removePaymentMethod(String method) {
    return 'Remove $method';
  }

  @override
  String get satsUnitLabel => 'sats';

  @override
  String satsAmount(String amount) {
    return '$amount sats';
  }

  @override
  String durationHours(int hours) {
    return '$hours h';
  }

  @override
  String get paymentMethodsLabel => 'Payment methods';

  @override
  String get customPaymentMethodHint => 'Custom payment method…';

  @override
  String amountRangeError(String min, String max) {
    return 'Amount must be between $min and $max';
  }

  @override
  String get enterAmountTitle => 'Enter Amount';

  @override
  String minMaxRangeLabel(String min, String max, String currency) {
    return 'Min: $min – Max: $max $currency';
  }

  @override
  String get ratingFailed => 'Rating failed. Please try again.';

  @override
  String get submitUppercaseButton => 'SUBMIT';

  @override
  String selectStarTooltip(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Select $countString stars',
      one: 'Select 1 star',
    );
    return '$_temp0';
  }

  @override
  String get disputeDetailsTitle => 'Dispute Details';

  @override
  String get disputeIdLabel => 'Dispute ID';

  @override
  String disputeReasonLabel(String reason) {
    return 'Reason: $reason';
  }

  @override
  String get solverLabel => 'Resolver';

  @override
  String get serberoLabel => 'Serbero';

  @override
  String get disputeSerberoAssigned =>
      'Serbero, an automated assistant, is helping with your dispute. It will ask you a few questions here and hand the case to a person if needed.';

  @override
  String get disputeSolverTookOver =>
      'A dispute resolver has taken over your dispute.';

  @override
  String get disputeScreenTitle => 'Dispute';

  @override
  String get filtersDialogTitle => 'Filters';

  @override
  String get resetButton => 'Reset';

  @override
  String get currencyLabel => 'Currency';

  @override
  String get ratingLabel => 'Rating';

  @override
  String get applyButton => 'Apply';

  @override
  String get successLabel => 'Success';

  @override
  String get copyButton => 'Copy';

  @override
  String get shareButton => 'Share';

  @override
  String sendSatsToAddress(String sats) {
    return 'Send $sats sats to:';
  }

  @override
  String get changeButton => 'Change';

  @override
  String get unableToOpenNotification => 'Unable to open notification details.';

  @override
  String get reasonBestPremium => 'Best premium';

  @override
  String get reasonMostReputable => 'Most reputable';

  @override
  String get marketPriceCaption => 'Market price';

  @override

  String effectiveRateUsd(String rate, String currency) {
    return '~$rate $currency/USD';
  }

  @override
  String reputationTradesLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'trades',
      one: 'trade',
    );
    return '$_temp0';
  }

  @override
  String reputationDaysLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'days',
      one: 'day',
    );
    return '$_temp0';
  }

  @override
