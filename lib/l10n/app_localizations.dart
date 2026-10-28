import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_it.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('it'),
    Locale('nl'),
    Locale('pt'),
  ];

  /// Application name
  ///
  /// In en, this message translates to:
  /// **'Mostro'**
  String get appName;

  /// Generic loading label
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get loading;

  /// Screen-reader-only announcement when a button action fails and the button enters its cooldown state
  ///
  /// In en, this message translates to:
  /// **'Action failed'**
  String get actionFailedAnnouncement;

  /// Cancel action
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Confirm action
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// Done action
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// Skip action
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// Timestamp label for messages from yesterday
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get chatTimestampYesterday;

  /// Empty state message on the disputes list screen
  ///
  /// In en, this message translates to:
  /// **'Your disputes will appear here'**
  String get disputesEmptyState;

  /// Tooltip for the attach file button in dispute chat
  ///
  /// In en, this message translates to:
  /// **'Attach file'**
  String get disputeAttachFile;

  /// Hint text for the dispute chat message input field
  ///
  /// In en, this message translates to:
  /// **'Write a message…'**
  String get disputeWriteMessageHint;

  /// Tooltip for the send button in dispute chat
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get disputeSend;

  /// Title label for a dispute list item
  ///
  /// In en, this message translates to:
  /// **'Order dispute'**
  String get orderDispute;

  /// Banner shown when a person took the dispute but no messages exist yet
  ///
  /// In en, this message translates to:
  /// **'A dispute resolver has taken your dispute. They will contact you here shortly.'**
  String get disputeSolverAssigned;

  /// Lock banner shown when the dispute is resolved
  ///
  /// In en, this message translates to:
  /// **'This dispute has been resolved. The chat is closed.'**
  String get disputeChatClosed;

  /// Snackbar text after copying a chat message to clipboard
  ///
  /// In en, this message translates to:
  /// **'Copied'**
  String get messageCopied;

  /// Error message shown when disputes fail to load
  ///
  /// In en, this message translates to:
  /// **'Failed to load disputes. Please try again.'**
  String get disputeLoadError;

  /// Shown when the user tries to write in a dispute chat before a solver has taken the dispute
  ///
  /// In en, this message translates to:
  /// **'No resolver has taken this dispute yet. You can write once one does.'**
  String get disputeSolverNotAssigned;

  /// Body text shown when a dispute cannot be found by ID
  ///
  /// In en, this message translates to:
  /// **'Dispute not found.'**
  String get disputeNotFound;

  /// Snackbar shown when no dispute exists for the current trade
  ///
  /// In en, this message translates to:
  /// **'Dispute not found for this order.'**
  String get disputeNotFoundForOrder;

  /// Badge label shown on a resolved dispute banner
  ///
  /// In en, this message translates to:
  /// **'Resolved'**
  String get disputeResolved;

  /// Heading shown when the viewing party won the dispute
  ///
  /// In en, this message translates to:
  /// **'Successfully completed'**
  String get disputeSuccessfullyCompleted;

  /// Body text in the cooperative-cancel resolved banner
  ///
  /// In en, this message translates to:
  /// **'The order was cooperatively cancelled. No funds were transferred.'**
  String get disputeCoopCancelMessage;

  /// Sub-title showing the truncated order/trade ID
  ///
  /// In en, this message translates to:
  /// **'Order {orderId}'**
  String orderLabel(String orderId);

  /// Dispute info card chip: the dispute ended without a verdict (e.g. a cooperative cancel)
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get disputeStatusClosed;

  /// Dispute info card title: the counterparty's role (seller or buyer) and pseudonym
  ///
  /// In en, this message translates to:
  /// **'Dispute with {role}: {counterparty}'**
  String disputeWith(String role, String counterparty);

  /// Role name for the seller, used inside disputeWith
  ///
  /// In en, this message translates to:
  /// **'Seller'**
  String get seller;

  /// Role name for the buyer, used inside disputeWith
  ///
  /// In en, this message translates to:
  /// **'Buyer'**
  String get buyer;

  /// Dispute info card chip: opened, no solver yet
  ///
  /// In en, this message translates to:
  /// **'Initiated'**
  String get disputeStatusInitiated;

  /// Dispute info card chip: a solver has the dispute
  ///
  /// In en, this message translates to:
  /// **'In progress'**
  String get disputeStatusInProgress;

  /// Dispute info card chip: a solver's verdict ended the dispute
  ///
  /// In en, this message translates to:
  /// **'Resolved'**
  String get disputeStatusResolved;

  /// Dispute info card: status sentence while a solver reviews the dispute (or one has taken it)
  ///
  /// In en, this message translates to:
  /// **'This dispute is currently in progress. A resolver is reviewing your case.'**
  String get disputeInProgress;

  /// Dispute info card: first instruction bullet
  ///
  /// In en, this message translates to:
  /// **'Wait for a resolver to take your dispute. Once they arrive, share any relevant evidence to help clarify the situation.'**
  String get disputeInstruction1;

  /// Dispute info card: second instruction bullet
  ///
  /// In en, this message translates to:
  /// **'The final decision will be made based on the evidence presented.'**
  String get disputeInstruction2;

  /// Dispute info card: third instruction bullet
  ///
  /// In en, this message translates to:
  /// **'If you don\'t respond, the system will assume you don\'t want to cooperate and you might lose the dispute.'**
  String get disputeInstruction3;

  /// Dispute info card: status sentence when the user (buyer) opened the dispute and no solver took it yet
  ///
  /// In en, this message translates to:
  /// **'You opened this dispute against the seller {counterparty}. Please read the following carefully:'**
  String disputeOpenedByYouAgainstSeller(String counterparty);

  /// Dispute info card: status sentence when the user (seller) opened the dispute and no solver took it yet
  ///
  /// In en, this message translates to:
  /// **'You opened this dispute against the buyer {counterparty}. Please read the following carefully:'**
  String disputeOpenedByYouAgainstBuyer(String counterparty);

  /// Dispute info card: status sentence when the peer opened the dispute and no solver took it yet
  ///
  /// In en, this message translates to:
  /// **'Waiting for a resolver to take the dispute'**
  String get disputeWaitingForAdmin;

  /// Resolution text shown to the seller when admin released funds to the buyer
  ///
  /// In en, this message translates to:
  /// **'The dispute resolver settled the dispute in the buyer\'s favour. The sats were released to the buyer.'**
  String get disputeLostFundsToBuyer;

  /// Resolution text shown to the buyer when admin returned funds to the seller
  ///
  /// In en, this message translates to:
  /// **'The dispute resolver cancelled the order and returned the sats to the seller. You did not receive the sats.'**
  String get disputeLostFundsToSeller;

  /// Walkthrough slide 1: title
  ///
  /// In en, this message translates to:
  /// **'P2P Bitcoin, no KYC'**
  String get walkthroughWelcomeTitle;

  /// Walkthrough slide 1: first paragraph
  ///
  /// In en, this message translates to:
  /// **'Mostro is a peer-to-peer exchange that lets you trade Bitcoin for any currency and payment method, with no KYC and no need to give your data to anyone.'**
  String get walkthroughWelcomeBody1;

  /// Walkthrough slide 1: second paragraph
  ///
  /// In en, this message translates to:
  /// **'It\'s built on Nostr, which makes it censorship-resistant. No one can stop you from trading.'**
  String get walkthroughWelcomeBody2;

  /// Walkthrough slide 2: title
  ///
  /// In en, this message translates to:
  /// **'Privacy by default'**
  String get walkthroughPrivacyTitle;

  /// Walkthrough slide 2: first paragraph
  ///
  /// In en, this message translates to:
  /// **'Mostro generates a new identity for every trade, so your trades can\'t be linked.'**
  String get walkthroughPrivacyBody1;

  /// Walkthrough slide 2: second paragraph
  ///
  /// In en, this message translates to:
  /// **'You can also decide how private you want to be:'**
  String get walkthroughPrivacyBody2;

  /// Walkthrough slide 2: mode card name
  ///
  /// In en, this message translates to:
  /// **'Reputation mode'**
  String get walkthroughReputationModeName;

  /// Walkthrough slide 2: mode card description
  ///
  /// In en, this message translates to:
  /// **'Lets others see your successful trades and trust level.'**
  String get walkthroughReputationModeBody;

  /// Walkthrough slide 2: mode card name
  ///
  /// In en, this message translates to:
  /// **'Full privacy mode'**
  String get walkthroughFullPrivacyModeName;

  /// Walkthrough slide 2: mode card description
  ///
  /// In en, this message translates to:
  /// **'No reputation is built, but your activity is completely anonymous.'**
  String get walkthroughFullPrivacyModeBody;

  /// Walkthrough slide 2: paragraph after the mode cards
  ///
  /// In en, this message translates to:
  /// **'Switch modes anytime from the Account screen. That\'s also where you should save your secret words. They\'re the only way to recover your account.'**
  String get walkthroughPrivacyFooter;

  /// Walkthrough slide 3: title
  ///
  /// In en, this message translates to:
  /// **'Security at every step'**
  String get walkthroughHeldTitle;

  /// Walkthrough slide 3: first paragraph
  ///
  /// In en, this message translates to:
  /// **'The seller\'s sats stay locked until the trade ends. This protects both sides.'**
  String get walkthroughHeldBody1;

  /// Walkthrough slide 3: second paragraph
  ///
  /// In en, this message translates to:
  /// **'The app is also designed to be intuitive and easy for all kinds of users.'**
  String get walkthroughHeldBody2;

  /// Walkthrough slide 4: title
  ///
  /// In en, this message translates to:
  /// **'Fully encrypted chat'**
  String get walkthroughChatTitle;

  /// Walkthrough slide 4: first paragraph
  ///
  /// In en, this message translates to:
  /// **'Each trade has its own private chat, end-to-end encrypted. Only you and your counterpart can read it, unless one of you shares its key.'**
  String get walkthroughChatBody1;

  /// Walkthrough slide 4: second paragraph
  ///
  /// In en, this message translates to:
  /// **'In a dispute, sharing that key with a dispute resolver lets them read the chat and help settle it.'**
  String get walkthroughChatBody2;

  /// Walkthrough slide 5: title
  ///
  /// In en, this message translates to:
  /// **'Take an order'**
  String get walkthroughTakeTitle;

  /// Walkthrough slide 5: first paragraph
  ///
  /// In en, this message translates to:
  /// **'Browse the order book, choose an order that works for you, and follow the trade step by step.'**
  String get walkthroughTakeBody1;

  /// Walkthrough slide 5: second paragraph
  ///
  /// In en, this message translates to:
  /// **'You\'ll be able to check your counterpart\'s profile, chat securely, and complete the trade with ease.'**
  String get walkthroughTakeBody2;

  /// Walkthrough slide 6: title
  ///
  /// In en, this message translates to:
  /// **'Can\'t find what you need?'**
  String get walkthroughMakeTitle;

  /// Walkthrough slide 6: first paragraph
  ///
  /// In en, this message translates to:
  /// **'You can also create your own order and wait for someone to take it.'**
  String get walkthroughMakeBody1;

  /// Walkthrough slide 6: second paragraph
  ///
  /// In en, this message translates to:
  /// **'Set the amount and your preferred payment method. Mostro handles the rest.'**
  String get walkthroughMakeBody2;

  /// Walkthrough: primary button that moves to the next slide
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get walkthroughNext;

  /// Walkthrough: visible slide counter, current slide of total
  ///
  /// In en, this message translates to:
  /// **'{current} / {total}'**
  String walkthroughStepCounter(int current, int total);

  /// Walkthrough: screen-reader form of the slide counter
  ///
  /// In en, this message translates to:
  /// **'Step {current} of {total}'**
  String walkthroughStepSemantics(int current, int total);

  /// Tab label for the buy Bitcoin order book
  ///
  /// In en, this message translates to:
  /// **'Buy BTC'**
  String get tabBuyBtc;

  /// Tab label for the sell Bitcoin order book
  ///
  /// In en, this message translates to:
  /// **'Sell BTC'**
  String get tabSellBtc;

  /// Button label to open order book filter options
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filterButtonLabel;

  /// Screen-reader addition to the order-book filter chip when filters narrow the book; the chip itself shows only the number in a badge. Read after the chip label, e.g. 'Filter, 2 filters on'
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 filter on} other{{count} filters on}}'**
  String filtersActiveCount(int count);

  /// Empty state message when the order book has no orders
  ///
  /// In en, this message translates to:
  /// **'No orders available'**
  String get noOrdersAvailable;

  /// Timestamp label for a very recent event
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get justNow;

  /// Relative timestamp in minutes
  ///
  /// In en, this message translates to:
  /// **'{m}m ago'**
  String minutesAgo(int m);

  /// Relative timestamp in hours
  ///
  /// In en, this message translates to:
  /// **'{h}h ago'**
  String hoursAgo(int h);

  /// Relative timestamp in days
  ///
  /// In en, this message translates to:
  /// **'{d}d ago'**
  String daysAgo(int d);

  /// Inline error on the add-invoice screen after the Mostro daemon refused the submitted invoice (CantDo InvalidInvoice)
  ///
  /// In en, this message translates to:
  /// **'The node rejected this invoice. Check its amount and expiry and add a new one.'**
  String get invoiceRejected;

  /// Snackbar shown after copying a Lightning invoice to clipboard
  ///
  /// In en, this message translates to:
  /// **'Invoice copied'**
  String get invoiceCopied;

  /// Generic submit button label
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submitButtonLabel;

  /// Error message when attempting to take an already-taken order
  ///
  /// In en, this message translates to:
  /// **'Order has already been taken'**
  String get orderAlreadyTaken;

  /// Error shown when the selected Mostro node advertises a protocol version this v2-native client does not speak, so it would never read the request
  ///
  /// In en, this message translates to:
  /// **'This Mostro node uses a protocol version this app does not support. Pick another node in Settings, or check for an app update'**
  String get nodeProtocolUnsupported;

  /// Error shown when a send fails closed because the selected node's capability fetch (PoW, protocol version) has not completed yet — retrying shortly usually succeeds
  ///
  /// In en, this message translates to:
  /// **'Still checking what the selected Mostro node supports. Try again in a moment'**
  String get nodeCapabilitiesUnknown;

  /// Error shown when a trade action (cancel, dispute, release, rating, invoice...) is refused before sending because the trade belongs to a Mostro node other than the selected one, or its node is unknown
  ///
  /// In en, this message translates to:
  /// **'This trade belongs to another Mostro node. Switch to that node to act on it'**
  String get tradeOnOtherNode;

  /// Error shown when the selected Mostro node answers CantDo(MaintenanceMode): it is draining (for example before a Lightning node migration) and refuses new orders and takes until it is back
  ///
  /// In en, this message translates to:
  /// **'The Mostro node you are connected to is under maintenance. Try again later, or connect to a different Mostro node in Settings'**
  String get mostroMaintenanceMode;

  /// Error shown when a trade key cannot be derived because the local database is unavailable, so orders cannot be created or taken
  ///
  /// In en, this message translates to:
  /// **'The app cannot create or take orders while its local database is unavailable. Restart the app and try again'**
  String get storageUnavailable;

  /// Create-order error (RangeOrderWithSats marker): a range order was sent with a fixed sats amount, which the daemon refuses
  ///
  /// In en, this message translates to:
  /// **'A range order can\'t have a fixed sats amount: it is priced at market when taken.'**
  String get rangeOrderWithSats;

  /// Snackbar shown after copying an order ID to clipboard
  ///
  /// In en, this message translates to:
  /// **'Order ID copied'**
  String get orderIdCopied;

  /// Generic coming-soon placeholder message
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get comingSoonMessage;

  /// Trade status chip label: completed
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get tradeStatusCompleted;

  /// Trade status chip label: cancelled
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get tradeStatusCancelled;

  /// Trade status chip label: disputed
  ///
  /// In en, this message translates to:
  /// **'Disputed'**
  String get tradeStatusDisputed;

  /// Screen title for the Account screen
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get accountScreenTitle;

  /// Section title for the mnemonic backup card
  ///
  /// In en, this message translates to:
  /// **'Secret Words'**
  String get secretWordsTitle;

  /// Section title for the privacy settings card
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get privacyCardTitle;

  /// Label for reputation privacy mode option
  ///
  /// In en, this message translates to:
  /// **'Reputation Mode'**
  String get reputationMode;

  /// Subtitle for reputation mode option
  ///
  /// In en, this message translates to:
  /// **'Your trades count toward your public reputation'**
  String get reputationModeSubtitle;

  /// Label for full privacy mode option
  ///
  /// In en, this message translates to:
  /// **'Full Privacy Mode'**
  String get fullPrivacyMode;

  /// Subtitle for full privacy mode option
  ///
  /// In en, this message translates to:
  /// **'Each trade uses a new identity, no reputation'**
  String get fullPrivacyModeSubtitle;

  /// Button label to generate a new Mostro identity
  ///
  /// In en, this message translates to:
  /// **'Generate New User'**
  String get generateNewUserButton;

  /// Button label to import an existing Mostro identity via mnemonic
  ///
  /// In en, this message translates to:
  /// **'Import Mostro User'**
  String get importMostroUserButton;

  /// Confirmation dialog title for generating a new user
  ///
  /// In en, this message translates to:
  /// **'Generate New User?'**
  String get generateNewUserDialogTitle;

  /// Confirmation dialog body for generating a new user
  ///
  /// In en, this message translates to:
  /// **'This will create a brand-new identity. Your current secret words will no longer work — make sure they are backed up before continuing.'**
  String get generateNewUserDialogContent;

  /// Continue button label
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButtonLabel;

  /// Dialog title for importing a mnemonic phrase
  ///
  /// In en, this message translates to:
  /// **'Import secret words'**
  String get importMnemonicDialogTitle;

  /// Hint text in the mnemonic import text field
  ///
  /// In en, this message translates to:
  /// **'Enter your 12 secret words'**
  String get importMnemonicHintText;

  /// Button label to confirm mnemonic import
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get importButtonLabel;

  /// Dialog title for refreshing user data
  ///
  /// In en, this message translates to:
  /// **'Refresh User?'**
  String get refreshUserDialogTitle;

  /// Dialog body for refreshing user data
  ///
  /// In en, this message translates to:
  /// **'This will re-fetch your trades and orders from the Mostro node. Use this if you think your data is out of sync or orders are missing.'**
  String get refreshUserDialogContent;

  /// Button label to hide sensitive information
  ///
  /// In en, this message translates to:
  /// **'Hide'**
  String get hideButtonLabel;

  /// Account: reveals the 12 masked secret words
  ///
  /// In en, this message translates to:
  /// **'Show words'**
  String get showWordsButton;

  /// Screen title for the Settings screen
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsScreenTitle;

  /// Settings list item title for language selection
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageSettingTitle;

  /// Settings list item title for appearance/theme
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearanceSettingTitle;

  /// Dialog title for the appearance/theme picker
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearanceDialogTitle;

  /// Option label meaning no currency filter is applied
  ///
  /// In en, this message translates to:
  /// **'All currencies'**
  String get allCurrencies;

  /// Settings list item title for the user's Lightning address
  ///
  /// In en, this message translates to:
  /// **'Lightning Address'**
  String get lightningAddressSettingTitle;

  /// Settings list item title for NWC wallet connection
  ///
  /// In en, this message translates to:
  /// **'NWC Wallet'**
  String get nwcWalletSettingTitle;

  /// Settings list item title for Nostr relay management
  ///
  /// In en, this message translates to:
  /// **'Relays'**
  String get relaysSettingTitle;

  /// Settings list item title for push notification preferences
  ///
  /// In en, this message translates to:
  /// **'Push Notifications'**
  String get pushNotificationsSettingTitle;

  /// Settings list item title for viewing diagnostic logs
  ///
  /// In en, this message translates to:
  /// **'Log Report'**
  String get logReportSettingTitle;

  /// Settings list item title for the Mostro node configuration
  ///
  /// In en, this message translates to:
  /// **'Mostro Node'**
  String get mostroNodeSettingTitle;

  /// Theme option: dark mode
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// Theme option: light mode
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// Theme option: follow system setting
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get themeSystemDefault;

  /// Dialog title for editing the Lightning address
  ///
  /// In en, this message translates to:
  /// **'Lightning Address'**
  String get lightningAddressDialogTitle;

  /// Placeholder text in the Lightning address input field
  ///
  /// In en, this message translates to:
  /// **'user@domain.com'**
  String get lightningAddressHintText;

  /// Validation error for an invalid Lightning address format
  ///
  /// In en, this message translates to:
  /// **'Must be in user@domain format'**
  String get invalidLightningAddressFormat;

  /// Button label to clear a field or value
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clearButtonLabel;

  /// Button label to save a settings value
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get saveButtonLabel;

  /// Screen title for the QR code scanner
  ///
  /// In en, this message translates to:
  /// **'Scan QR Code'**
  String get scanQrCodeTitle;

  /// Dialog or screen title for the language picker
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguageTitle;

  /// Dialog title for the currency picker
  ///
  /// In en, this message translates to:
  /// **'Select Currency'**
  String get selectCurrencyDialogTitle;

  /// Dialog title for adding a new Nostr relay
  ///
  /// In en, this message translates to:
  /// **'Add Relay'**
  String get addRelayDialogTitle;

  /// Generic add action button label
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get addButtonLabel;

  /// Placeholder hint in the add-relay URL field
  ///
  /// In en, this message translates to:
  /// **'wss://relay.example.com'**
  String get relayHintText;

  /// Validation error when relay URL does not start with wss://
  ///
  /// In en, this message translates to:
  /// **'Must start with wss://'**
  String get relayErrorMustStartWithWss;

  /// Validation error when relay URL is too short
  ///
  /// In en, this message translates to:
  /// **'URL is too short'**
  String get relayErrorUrlTooShort;

  /// Validation error when relay URL is already added
  ///
  /// In en, this message translates to:
  /// **'Relay already in list'**
  String get relayErrorDuplicate;

  /// Heading text on the web QR code paste fallback screen
  ///
  /// In en, this message translates to:
  /// **'Paste QR Code Content'**
  String get pasteQrCodeHeading;

  /// Button label for paste-from-clipboard action
  ///
  /// In en, this message translates to:
  /// **'Paste'**
  String get pasteButtonLabel;

  /// Error shown when clipboard has no text to paste
  ///
  /// In en, this message translates to:
  /// **'Clipboard is empty'**
  String get clipboardEmptyError;

  /// Validation error when QR input field is empty
  ///
  /// In en, this message translates to:
  /// **'Please enter a value'**
  String get enterValueError;

  /// Badge shown on a verified/trusted Mostro node
  ///
  /// In en, this message translates to:
  /// **'Trusted'**
  String get trustedBadgeLabel;

  /// Button label to confirm a selection or action
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirmButtonLabel;

  /// Title of the Mostro node selector bottom sheet
  ///
  /// In en, this message translates to:
  /// **'Choose a node'**
  String get selectMostroNode;

  /// Button and dialog title for adding a custom node
  ///
  /// In en, this message translates to:
  /// **'Add your own node'**
  String get addCustomNode;

  /// Label of the pubkey input in the add-custom-node dialog
  ///
  /// In en, this message translates to:
  /// **'Public key'**
  String get nodePubkeyFieldLabel;

  /// Hint of the pubkey input in the add-custom-node dialog
  ///
  /// In en, this message translates to:
  /// **'64-char hex or npub…'**
  String get nodePubkeyFieldHint;

  /// Label of the optional display-name input in the add-custom-node dialog
  ///
  /// In en, this message translates to:
  /// **'Name (optional)'**
  String get nodeNameOptionalLabel;

  /// Validation error for a malformed node pubkey
  ///
  /// In en, this message translates to:
  /// **'Enter a valid public key (64-char hex or npub)'**
  String get invalidPubkeyFormat;

  /// Validation error when the user pastes an nsec private key
  ///
  /// In en, this message translates to:
  /// **'That is a private key — never share it. Enter the node\'s public key instead'**
  String get privateKeyNotAllowed;

  /// Error when adding a node that is already trusted or already added
  ///
  /// In en, this message translates to:
  /// **'This node is already in the list'**
  String get nodeAlreadyExists;

  /// Snackbar after a custom node was added
  ///
  /// In en, this message translates to:
  /// **'Node added'**
  String get nodeAddedSuccess;

  /// Snackbar after switching the active Mostro node
  ///
  /// In en, this message translates to:
  /// **'Now using {nodeName}'**
  String nodeSwitchedSuccess(String nodeName);

  /// Snackbar when activating a node fails
  ///
  /// In en, this message translates to:
  /// **'Failed to switch node'**
  String get errorSwitchingNode;

  /// Error when trying to delete the currently active node
  ///
  /// In en, this message translates to:
  /// **'The active node can\'t be removed — switch to another node first'**
  String get cannotRemoveActiveNode;

  /// Title of the remove-custom-node confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Remove node'**
  String get deleteCustomNodeTitle;

  /// Body of the remove-custom-node confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Remove this custom node from your list?'**
  String get deleteCustomNodeMessage;

  /// Confirm button of the remove-custom-node dialog
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get deleteCustomNodeConfirm;

  /// Snackbar after a custom node was removed
  ///
  /// In en, this message translates to:
  /// **'Node removed'**
  String get nodeRemovedSuccess;

  /// Error when a node registry action fails because local storage is not initialized
  ///
  /// In en, this message translates to:
  /// **'The local database isn\'t ready. Restart the app and try again'**
  String get nodeStorageUnavailable;

  /// Subtitle of the node selector; {code} is the user's fiat currency and is highlighted in the UI, so it must appear verbatim exactly once
  ///
  /// In en, this message translates to:
  /// **'Orders and currencies for {code}, your currency'**
  String nodeSelectorSubtitle(String code);

  /// Subtitle of the node selector when the user has no preferred fiat currency
  ///
  /// In en, this message translates to:
  /// **'Open orders on each node'**
  String get nodeSelectorSubtitleNoCurrency;

  /// Amber chip on a node card when the node does not accept the user's currency
  ///
  /// In en, this message translates to:
  /// **'NO {code}'**
  String nodeMissingCurrencyChip(String code);

  /// Label under the open-orders figure on a node card
  ///
  /// In en, this message translates to:
  /// **'orders now'**
  String get nodeOrdersNowLabel;

  /// Label under the open-orders figure when the node has none
  ///
  /// In en, this message translates to:
  /// **'no orders'**
  String get nodeNoOrdersLabel;

  /// Unit next to the open-orders figure: how many are in the user's currency
  ///
  /// In en, this message translates to:
  /// **'· {count} in {code}'**
  String nodeOrdersInCurrency(int count, String code);

  /// Label under the fee figure on a node card
  ///
  /// In en, this message translates to:
  /// **'fee'**
  String get nodeFeeLabel;

  /// Tooltip on the fee column of a node card
  ///
  /// In en, this message translates to:
  /// **'Mostro splits the fee between both parties.'**
  String get nodeFeeTooltip;

  /// Label under the sats range figure on a node card
  ///
  /// In en, this message translates to:
  /// **'per trade'**
  String get nodePerTradeLabel;

  /// Trust row of a node card: the node holds sats in a Lightning hold invoice
  ///
  /// In en, this message translates to:
  /// **'Lightning custody'**
  String get nodeCustodyLightning;

  /// Trust row of a node card: Cashu escrow at the given mint
  ///
  /// In en, this message translates to:
  /// **'Cashu custody · {mint}'**
  String nodeCustodyCashu(String mint);

  /// Trust row of a node card when the node publishes no escrow backend
  ///
  /// In en, this message translates to:
  /// **'Custody —'**
  String get nodeCustodyUnknown;

  /// Trust row of a node card: the anti-abuse bond the node requires
  ///
  /// In en, this message translates to:
  /// **'Deposit {pct}%'**
  String nodeBondPct(String pct);

  /// Trust row of a node card: the node requires no bond
  ///
  /// In en, this message translates to:
  /// **'No deposit'**
  String get nodeBondNone;

  /// Availability line of a node card
  ///
  /// In en, this message translates to:
  /// **'Online · {count, plural, =1{1 order} other{{count} orders}}'**
  String nodeStatusOnline(int count);

  /// Availability line of a node card: reachable but nothing in the user's currencies
  ///
  /// In en, this message translates to:
  /// **'No orders in your currencies'**
  String get nodeStatusNoUsefulOrders;

  /// Availability line of a node card; {ago} is a compact relative time such as '2h ago'
  ///
  /// In en, this message translates to:
  /// **'Not responding · last seen {ago}'**
  String nodeStatusUnreachable(String ago);

  /// Availability line of a node card that never answered
  ///
  /// In en, this message translates to:
  /// **'Not responding'**
  String get nodeStatusUnreachableNoSignal;

  /// First-run node choice, under the title: what the screen asks (v1 mostroNodeDescription)
  ///
  /// In en, this message translates to:
  /// **'Select the Mostro node you want to trade on'**
  String get nodeChoiceSubtitle;

  /// First-run node choice: the full operator disclaimer of v1 (communityDisclaimerBody), in a warning note
  ///
  /// In en, this message translates to:
  /// **'The Mostro development team is not responsible for how node operators use the platform. Each operator controls their own Mostro node and is solely responsible for their actions. By using Mostro, you accept full responsibility for your trades and acknowledge that the development team has no control over individual node operators.'**
  String get nodeOperatorDisclaimer;

  /// First-run node choice: primary button, enabled once a node card is picked
  ///
  /// In en, this message translates to:
  /// **'Use this node'**
  String get nodeChoiceConfirm;

  /// First-run node choice: snackbar when the choice could not be saved on the device; both actions stay available
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save your choice. Try again.'**
  String get nodeChoiceSaveFailed;

  /// Warning box in the add-own-node dialog
  ///
  /// In en, this message translates to:
  /// **'Verify the key with the operator. A fake node can see your orders.'**
  String get nodeVerifyKeyWarning;

  /// Inline error under the public-key field of the add-own-node dialog
  ///
  /// In en, this message translates to:
  /// **'This is not a valid public key.'**
  String get nodeInvalidPubkeyShort;

  /// Placeholder of the optional name field of the add-own-node dialog
  ///
  /// In en, this message translates to:
  /// **'Local Mostro'**
  String get nodeNameFieldHint;

  /// Snackbar after tapping a node's public key
  ///
  /// In en, this message translates to:
  /// **'Key copied'**
  String get nodePubkeyCopied;

  /// Snackbar when tapping a node card that is not responding
  ///
  /// In en, this message translates to:
  /// **'This node is not responding'**
  String get nodeNotSelectableOffline;

  /// Accessibility label of the shimmer skeleton while a node's figures load
  ///
  /// In en, this message translates to:
  /// **'Loading node data'**
  String get nodeStatsLoading;

  /// Title of the sheet asking to confirm a node switch while a trade is in progress
  ///
  /// In en, this message translates to:
  /// **'Change node?'**
  String get nodeSwitchConfirmTitle;

  /// Body of the node-switch confirmation sheet
  ///
  /// In en, this message translates to:
  /// **'You have a trade in progress on {currentNode}. It stays there; the order book will now show {newNode}.'**
  String nodeSwitchConfirmBody(String currentNode, String newNode);

  /// Confirm button of the node-switch confirmation sheet
  ///
  /// In en, this message translates to:
  /// **'Change node'**
  String get nodeSwitchConfirmAction;

  /// Snackbar when the node selector could not read the local trades to decide whether a switch needs confirmation
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t check your trades. Try again.'**
  String get nodeTradesCheckFailed;

  /// Screen title for the Notifications screen
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notificationsScreenTitle;

  /// Menu item to mark all notifications as read
  ///
  /// In en, this message translates to:
  /// **'Mark all as read'**
  String get markAllAsReadMenuItem;

  /// Menu item to delete all notifications
  ///
  /// In en, this message translates to:
  /// **'Clear all'**
  String get clearAllMenuItem;

  /// Notification title prompting the user to back up their account
  ///
  /// In en, this message translates to:
  /// **'You must back up your account'**
  String get youMustBackUpYourAccount;

  /// Notification body prompting the user to view and save secret words
  ///
  /// In en, this message translates to:
  /// **'Tap to view and save your secret words.'**
  String get tapToViewAndSaveSecretWords;

  /// Empty state message on the notifications screen
  ///
  /// In en, this message translates to:
  /// **'No notifications'**
  String get noNotifications;

  /// Contextual action to mark a single notification as read
  ///
  /// In en, this message translates to:
  /// **'Mark as read'**
  String get markAsRead;

  /// Contextual action to delete a single notification
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteNotificationLabel;

  /// Header label on the post-trade rating screen
  ///
  /// In en, this message translates to:
  /// **'RATE'**
  String get rateScreenHeader;

  /// Label shown for a completed order on the rating screen
  ///
  /// In en, this message translates to:
  /// **'Successful order'**
  String get successfulOrder;

  /// Button label to close the rating screen without rating
  ///
  /// In en, this message translates to:
  /// **'CLOSE'**
  String get closeRatingButton;

  /// Screen title for the About screen
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutScreenTitle;

  /// Snackbar shown after copying a link to clipboard
  ///
  /// In en, this message translates to:
  /// **'Link copied to clipboard'**
  String get linkCopiedToClipboard;

  /// Label for a Nostr public key
  ///
  /// In en, this message translates to:
  /// **'Pubkey'**
  String get pubkeyLabel;

  /// Label for the list of Nostr relays
  ///
  /// In en, this message translates to:
  /// **'Relays'**
  String get relaysLabel;

  /// Footer tagline on the About screen
  ///
  /// In en, this message translates to:
  /// **'Open-source. Non-custodial. Private.'**
  String get footerTagline;

  /// Title shown at the top of the navigation drawer
  ///
  /// In en, this message translates to:
  /// **'Mostro'**
  String get drawerTitle;

  /// Subtitle under the Mostro wordmark in the drawer header (rendered uppercase)
  ///
  /// In en, this message translates to:
  /// **'P2P exchange'**
  String get drawerTagline;

  /// Release-stage chip in the drawer header (rendered uppercase). Single source for the stage label — change it here when the app leaves beta
  ///
  /// In en, this message translates to:
  /// **'Beta'**
  String get drawerStageBadge;

  /// App version line in the drawer footer
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String drawerVersion(String version);

  /// Drawer menu item navigating to the Account screen
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get drawerAccountMenuItem;

  /// Drawer menu item navigating to the Settings screen
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get drawerSettingsMenuItem;

  /// Drawer menu item navigating to the About screen
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get drawerAboutMenuItem;

  /// Bottom navigation label for the Order Book tab
  ///
  /// In en, this message translates to:
  /// **'Order Book'**
  String get navOrderBook;

  /// Bottom navigation label for the My Trades tab
  ///
  /// In en, this message translates to:
  /// **'My Trades'**
  String get navMyTrades;

  /// Bottom navigation label for the Chat tab
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get navChat;

  /// Accessibility label for the order book shimmer skeleton (DESIGN_SYSTEM §9.1)
  ///
  /// In en, this message translates to:
  /// **'Loading orders…'**
  String get loadingOrders;

  /// Error message shown when the order book fails to load
  ///
  /// In en, this message translates to:
  /// **'Could not load orders. Please check your connection.'**
  String get errorLoadingOrders;

  /// Retry button label
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// Accessibility label for the toggle that disables a relay
  ///
  /// In en, this message translates to:
  /// **'Disable relay {url}'**
  String disableRelayLabel(String url);

  /// Accessibility label for the toggle that enables a relay
  ///
  /// In en, this message translates to:
  /// **'Enable relay {url}'**
  String enableRelayLabel(String url);

  /// Tooltip for the remove-relay icon button
  ///
  /// In en, this message translates to:
  /// **'Remove relay'**
  String get removeRelayTooltip;

  /// SnackBar message shown when adding a relay fails
  ///
  /// In en, this message translates to:
  /// **'Failed to add relay'**
  String get relayAddFailed;

  /// SnackBar message shown when removing a relay fails
  ///
  /// In en, this message translates to:
  /// **'Failed to remove relay'**
  String get relayRemoveFailed;

  /// Shown when the user picks a wrong word a second time during backup verification; sends them back to review the words and restart verification
  ///
  /// In en, this message translates to:
  /// **'That was incorrect again. Please review and back up your secret words, then verify from the start.'**
  String get backupRitualSecondFailureMessage;

  /// Title for the cancel-trade confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Cancel trade?'**
  String get cancelTradeDialogTitle;

  /// Body text for the cancel-trade confirmation dialog once the trade is active: the cancel is a cooperative request
  ///
  /// In en, this message translates to:
  /// **'Requesting a cooperative cancel. Your counterpart must also agree for the trade to be fully cancelled.'**
  String get cancelTradeDialogContent;

  /// Body text for the cancel-trade confirmation dialog before the trade is active (pending, waiting for the invoice or the hold-invoice payment): the daemon cancels at once
  ///
  /// In en, this message translates to:
  /// **'The trade has not started yet, so it is cancelled right away. Your counterpart does not need to agree.'**
  String get cancelTradeDialogContentNotStarted;

  /// Body text for the cancel-trade confirmation dialog while the order is only known to be taken (in progress): the trade may or may not be active yet
  ///
  /// In en, this message translates to:
  /// **'If the trade has not started yet, it is cancelled right away. If it has, your counterpart must also agree.'**
  String get cancelTradeDialogContentMaybeStarted;

  /// Negative button label in a confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get noButtonLabel;

  /// Generic Yes button label
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yesButtonLabel;

  /// Affirmative cancel button label in the cancel-trade dialog
  ///
  /// In en, this message translates to:
  /// **'Yes, cancel'**
  String get yesCancelButtonLabel;

  /// Snackbar shown after a cooperative cancel request is sent
  ///
  /// In en, this message translates to:
  /// **'Cancel request sent'**
  String get cancelRequestSent;

  /// Snackbar shown when the cancel request fails
  ///
  /// In en, this message translates to:
  /// **'Failed to cancel. Please try again.'**
  String get cancelRequestFailed;

  /// Notifications card title on the daemon confirming this user's cooperative-cancel request (protocol cancel.md); the trade stays open until the other party also cancels
  ///
  /// In en, this message translates to:
  /// **'Cancel requested'**
  String get tradeCardCancelRequestedByMeTitle;

  /// Notifications card body on the daemon confirming this user's cooperative-cancel request
  ///
  /// In en, this message translates to:
  /// **'You asked to cancel this trade. It stays open until your counterpart also cancels. If they do not respond, you can open a dispute.'**
  String get tradeCardCancelRequestedByMeMessage;

  /// Notifications card title when the counterparty asked to cancel an active trade (protocol cancel.md); this user decides whether to accept
  ///
  /// In en, this message translates to:
  /// **'Your counterpart wants to cancel'**
  String get tradeCardCancelRequestedByPeerTitle;

  /// Notifications card body when the counterparty asked to cancel an active trade
  ///
  /// In en, this message translates to:
  /// **'They asked to cancel this trade. Accept to end it with no funds moved, or keep trading.'**
  String get tradeCardCancelRequestedByPeerMessage;

  /// Notice on the trade screen while this user's cooperative-cancel request waits for the other party
  ///
  /// In en, this message translates to:
  /// **'You asked to cancel this trade. It stays open until your counterpart also cancels. If they do not respond, you can open a dispute.'**
  String get tradeCancelRequestedByMeNotice;

  /// Notice on the trade screen while the counterparty's cooperative-cancel request waits for this user
  ///
  /// In en, this message translates to:
  /// **'Your counterpart asked to cancel this trade. Accept to end it with no funds moved, or keep trading.'**
  String get tradeCancelRequestedByPeerNotice;

  /// Label of the cancel button once the counterparty asked to cancel: this user's cancel accepts theirs and ends the trade
  ///
  /// In en, this message translates to:
  /// **'Accept cancel'**
  String get acceptCancelButton;

  /// Body text for the cancel-trade confirmation dialog when the counterparty already asked to cancel: this cancel accepts theirs
  ///
  /// In en, this message translates to:
  /// **'Your counterpart asked to cancel. Cancelling now ends the trade for both of you and no funds are moved.'**
  String get cancelTradeDialogContentAccept;

  /// Snackbar shown when the fiat-sent action fails
  ///
  /// In en, this message translates to:
  /// **'Failed to mark the payment as sent. Please try again.'**
  String get fiatSentFailed;

  /// Snackbar shown when the release-sats action fails
  ///
  /// In en, this message translates to:
  /// **'Failed to release. Please try again.'**
  String get releaseFailed;

  /// Trade screen, seller: the disabled Release button while a published release waits for the node's confirmation (hold invoice settlement)
  ///
  /// In en, this message translates to:
  /// **'Releasing… waiting for the node'**
  String get releasePendingLabel;

  /// Snackbar after the seller confirmed the release: it was published, and the node confirms it only once the hold invoice settled
  ///
  /// In en, this message translates to:
  /// **'Release sent. The node can take up to a minute to confirm it.'**
  String get releaseSentNotice;

  /// Snackbar when a published release got no confirmation within 90 s: Release is offered again; a retry is safe
  ///
  /// In en, this message translates to:
  /// **'The node has not confirmed the release yet. If the order doesn\'t update, you can release again.'**
  String get releaseUnconfirmedNotice;

  /// Button label to cancel an in-progress trade (secondary action row)
  ///
  /// In en, this message translates to:
  /// **'Cancel trade'**
  String get cancelTradeButton;

  /// Primary CTA for the seller to open the pay hold invoice screen
  ///
  /// In en, this message translates to:
  /// **'Pay invoice'**
  String get payHoldInvoiceButton;

  /// Button label to open a dispute on an in-progress trade
  ///
  /// In en, this message translates to:
  /// **'Open dispute'**
  String get openDisputeButton;

  /// Button label for the seller to release sats during an active dispute (secondary action row)
  ///
  /// In en, this message translates to:
  /// **'Release sats'**
  String get releaseSatsButton;

  /// Primary CTA button label for the seller to confirm and release sats
  ///
  /// In en, this message translates to:
  /// **'Confirm & release sats'**
  String get confirmReleaseSatsButton;

  /// Menu item label to share the current order (not yet implemented — shows a coming-soon message)
  ///
  /// In en, this message translates to:
  /// **'Share order'**
  String get shareOrderButton;

  /// Order card pill label when the current user is the maker of a sell order
  ///
  /// In en, this message translates to:
  /// **'YOU ARE SELLING'**
  String get orderPillYouAreSelling;

  /// Order card pill label when the current user is the maker of a buy order
  ///
  /// In en, this message translates to:
  /// **'YOU ARE BUYING'**
  String get orderPillYouAreBuying;

  /// Screen title when viewing the maker's own sell order
  ///
  /// In en, this message translates to:
  /// **'Your sell order'**
  String get myOrderSellTitle;

  /// Screen title when viewing the maker's own buy order
  ///
  /// In en, this message translates to:
  /// **'Your buy order'**
  String get myOrderBuyTitle;

  /// Snackbar shown when the cancel-order action fails
  ///
  /// In en, this message translates to:
  /// **'Failed to cancel order. Please try again.'**
  String get cancelOrderFailed;

  /// Generic close button label
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get closeButtonLabel;

  /// Generic copy action button label (e.g. in SnackBar actions)
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copyButtonLabel;

  /// Status label shown on a pending maker order
  ///
  /// In en, this message translates to:
  /// **'Waiting for a taker'**
  String get orderStatusWaitingForTaker;

  /// Status label when a trade is active
  ///
  /// In en, this message translates to:
  /// **'In progress'**
  String get orderStatusInProgress;

  /// Status label when an order has expired
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get orderStatusExpired;

  /// Tooltip for the copy-order-ID icon button
  ///
  /// In en, this message translates to:
  /// **'Copy order ID'**
  String get copyOrderIdTooltip;

  /// AppBar title when the requested order no longer exists
  ///
  /// In en, this message translates to:
  /// **'Order Not Found'**
  String get orderNotFoundTitle;

  /// Body text shown when the requested order no longer exists
  ///
  /// In en, this message translates to:
  /// **'This order is no longer available.'**
  String get orderNotFoundMessage;

  /// Snackbar shown after a maker successfully cancels their own pending order
  ///
  /// In en, this message translates to:
  /// **'Order cancelled successfully.'**
  String get orderCancelledSuccess;

  /// About screen — Documentation card title
  ///
  /// In en, this message translates to:
  /// **'Documentation'**
  String get aboutDocumentationTitle;

  /// About screen — Mostro Node card title
  ///
  /// In en, this message translates to:
  /// **'Mostro Node'**
  String get aboutMostroNodeTitle;

  /// About screen — Version row label
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get aboutVersionLabel;

  /// About screen — Commit Hash row label
  ///
  /// In en, this message translates to:
  /// **'Commit Hash'**
  String get aboutCommitHashLabel;

  /// About screen — License row label
  ///
  /// In en, this message translates to:
  /// **'License'**
  String get aboutLicenseLabel;

  /// About screen — License name value
  ///
  /// In en, this message translates to:
  /// **'AGPLv3+'**
  String get aboutLicenseName;

  /// About screen — GitHub repository display name
  ///
  /// In en, this message translates to:
  /// **'MostroP2P/app'**
  String get aboutGithubRepoName;

  /// Snackbar shown after copying a value to clipboard on the About screen
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get aboutCopiedToClipboard;

  /// Title for the AGPLv3 license dialog on the About screen
  ///
  /// In en, this message translates to:
  /// **'GNU Affero General Public License v3'**
  String get aboutLicenseDialogTitle;

  /// Text shown while the Mostro node info is being fetched
  ///
  /// In en, this message translates to:
  /// **'Loading node information…'**
  String get aboutNodeLoadingText;

  /// Text shown when the Mostro node info cannot be fetched
  ///
  /// In en, this message translates to:
  /// **'Node information unavailable'**
  String get aboutNodeUnavailable;

  /// Button to retry fetching the Mostro node info
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get aboutNodeRetry;

  /// About screen — Mostro Node Lightning Network section header
  ///
  /// In en, this message translates to:
  /// **'Lightning Network'**
  String get aboutLightningNetworkSection;

  /// About screen — Fiat Currencies row label
  ///
  /// In en, this message translates to:
  /// **'Fiat Currencies'**
  String get aboutFiatCurrenciesLabel;

  /// Technical data row, in the Price group: a price provider behind the exchange rates the Mostro node publishes now (Yadio, CoinGecko, El Toque…), as its rates event names them
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get aboutPriceSourceLabel;

  /// Technical data group title: the node's exchange rates, holding the price source row
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get aboutPriceSection;

  /// Technical data footnote, added when the Price group is shown: the sources are the providers of the rates published now, not every provider the node is configured with
  ///
  /// In en, this message translates to:
  /// **'Price sources are the providers behind the rates the node publishes now; one that failed or was set aside is not listed.'**
  String get aboutPriceSourcesFootnote;

  /// About screen — Mostro Version row label
  ///
  /// In en, this message translates to:
  /// **'Mostro Version'**
  String get aboutMostroVersionLabel;

  /// About screen — Mostro Commit row label
  ///
  /// In en, this message translates to:
  /// **'Mostro Commit'**
  String get aboutMostroCommitLabel;

  /// About screen — Hold Invoice Expiration row label
  ///
  /// In en, this message translates to:
  /// **'Hold Invoice Expiration'**
  String get aboutHoldInvoiceExpLabel;

  /// About screen — Hold Invoice CLTV Delta row label
  ///
  /// In en, this message translates to:
  /// **'Hold Invoice CLTV'**
  String get aboutHoldInvoiceCltvLabel;

  /// About screen — Invoice Expiration Window row label
  ///
  /// In en, this message translates to:
  /// **'Invoice Expiration Window'**
  String get aboutInvoiceExpWindowLabel;

  /// About screen — Proof of Work row label
  ///
  /// In en, this message translates to:
  /// **'Proof of Work'**
  String get aboutProofOfWorkLabel;

  /// About screen — Max Orders Per Response row label
  ///
  /// In en, this message translates to:
  /// **'Max Orders/Response'**
  String get aboutMaxOrdersPerResponseLabel;

  /// About screen — LND Version row label
  ///
  /// In en, this message translates to:
  /// **'LND Version'**
  String get aboutLndVersionLabel;

  /// About screen — Supported Chains row label
  ///
  /// In en, this message translates to:
  /// **'Supported Chains'**
  String get aboutSupportedChainsLabel;

  /// About screen — Supported Networks row label
  ///
  /// In en, this message translates to:
  /// **'Supported Networks'**
  String get aboutSupportedNetworksLabel;

  /// Unit written after a sats amount: the minimum deposit row of the node technical data screen, the Cashu wallet balance and the amount rows of the lock-escrow screen
  ///
  /// In en, this message translates to:
  /// **'Satoshis'**
  String get aboutSatoshisSuffix;

  /// Suffix appended to block counts on the About screen
  ///
  /// In en, this message translates to:
  /// **'blocks'**
  String get aboutBlocksSuffix;

  /// Value shown when the node accepts all fiat currencies
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get aboutFiatCurrenciesAll;

  /// About screen — anti-abuse bond section header
  ///
  /// In en, this message translates to:
  /// **'Anti-abuse Deposit'**
  String get aboutAntiAbuseBondSection;

  /// About screen — value shown when a bond setting is on
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get aboutBondEnabledValue;

  /// About screen — value shown when a bond setting is off
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get aboutBondDisabledValue;

  /// About screen — value shown when the daemon predates the anti-abuse bond feature
  ///
  /// In en, this message translates to:
  /// **'Not supported'**
  String get aboutBondUnsupportedValue;

  /// About screen — bond status row label
  ///
  /// In en, this message translates to:
  /// **'Deposit status'**
  String get aboutBondStatusLabel;

  /// About screen — bond applies-to row label
  ///
  /// In en, this message translates to:
  /// **'Applies to'**
  String get aboutBondAppliesToLabel;

  /// About screen — bond applies to takers only
  ///
  /// In en, this message translates to:
  /// **'Takers'**
  String get aboutBondAppliesToTakers;

  /// About screen — bond applies to makers only
  ///
  /// In en, this message translates to:
  /// **'Makers'**
  String get aboutBondAppliesToMakers;

  /// About screen — bond applies to both sides of a trade
  ///
  /// In en, this message translates to:
  /// **'Makers and takers'**
  String get aboutBondAppliesToBoth;

  /// About screen — bond amount percentage row label
  ///
  /// In en, this message translates to:
  /// **'Deposit amount'**
  String get aboutBondAmountLabel;

  /// About screen — minimum bond row label
  ///
  /// In en, this message translates to:
  /// **'Minimum deposit'**
  String get aboutBondBaseAmountLabel;

  /// About screen — node share of a slashed bond row label
  ///
  /// In en, this message translates to:
  /// **'Node\'s share of a forfeited deposit'**
  String get aboutBondNodeShareLabel;

  /// About screen — slash on waiting timeout row label
  ///
  /// In en, this message translates to:
  /// **'Forfeited when a step times out'**
  String get aboutBondSlashOnTimeoutLabel;

  /// About screen — bond payout claim window row label
  ///
  /// In en, this message translates to:
  /// **'Payout claim window'**
  String get aboutBondClaimWindowLabel;

  /// About screen — bond payout claim window value with a pluralized day count
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{{count} day} other{{count} days}}'**
  String aboutBondClaimWindowValue(int count);

  /// Snackbar shown when opening a dispute fails
  ///
  /// In en, this message translates to:
  /// **'Could not open dispute. Please try again.'**
  String get openDisputeFailed;

  /// Title of the open-dispute confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Open dispute'**
  String get openDisputeTitle;

  /// Body of the open-dispute confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to open a dispute? This escalates the trade to a dispute resolver and cannot be undone.'**
  String get openDisputeConfirmation;

  /// Snackbar shown when a dispute is opened for a trade that already has one, or while a previous attempt is still in flight
  ///
  /// In en, this message translates to:
  /// **'A dispute for this trade is already open.'**
  String get disputeAlreadyOpen;

  /// Snackbar shown when a dispute is attempted before the trade reaches a disputable state
  ///
  /// In en, this message translates to:
  /// **'A dispute can only be opened once the funds are locked for this trade.'**
  String get tradeNotDisputable;

  /// Instruction shown to the buyer while waiting to submit their Lightning invoice
  ///
  /// In en, this message translates to:
  /// **'Submit your Lightning invoice so the seller can lock the funds.'**
  String get tradeWaitingInvoiceBuyerInstruction;

  /// Instruction shown to the seller while waiting for the buyer's Lightning invoice
  ///
  /// In en, this message translates to:
  /// **'Waiting for the buyer to submit their Lightning invoice.'**
  String get tradeWaitingInvoiceSellerInstruction;

  /// Instruction shown to the seller prompting them to pay the hold invoice
  ///
  /// In en, this message translates to:
  /// **'Pay the invoice to lock the sats and start the trade.'**
  String get tradeWaitingPaymentSellerInstruction;

  /// Error message shown when a trade fails to load
  ///
  /// In en, this message translates to:
  /// **'An error occurred while loading the trade.'**
  String get tradeLoadError;

  /// Loading message shown while the Mostro daemon has not yet sent the hold invoice
  ///
  /// In en, this message translates to:
  /// **'Waiting for the invoice…'**
  String get tradeWaitingForHoldInvoice;

  /// Share action button label on the pay invoice screen
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get shareButtonLabel;

  /// Snackbar shown when the system share sheet fails
  ///
  /// In en, this message translates to:
  /// **'Could not share the invoice'**
  String get shareFailed;

  /// Text shown while waiting for the Lightning payment to be confirmed after paying the hold invoice
  ///
  /// In en, this message translates to:
  /// **'Waiting for payment confirmation…'**
  String get waitingForPaymentConfirmation;

  /// Neutral notice shown when the order reaches a terminal state (canceled, cooperatively canceled, canceled by admin, or expired) while the user is on the add-invoice or pay-invoice screen
  ///
  /// In en, this message translates to:
  /// **'This order is no longer active'**
  String get orderNoLongerActive;

  /// Notice when the trade screen closes because the user no longer has a trade on this order: a take lost before it went active (their own cancel, a waiting timeout, the maker cancelling), or a later visit to such a trade from a notification. Neutral on purpose: the order may be back in the book or gone for good
  ///
  /// In en, this message translates to:
  /// **'You\'re no longer part of this trade'**
  String get tradeNoLongerYours;

  /// Snackbar shown when the Mostro node does not respond to a new order within the timeout — the order was not created
  ///
  /// In en, this message translates to:
  /// **'No response received. Check your connection and try again later.'**
  String get sessionTimeoutMessage;

  /// Snackbar shown when no relay accepted an outgoing message: every relay refused it, timed out or was unreachable, so it may not have reached the Mostro node (a relay that timed out may still have forwarded it) — unlike sessionTimeoutMessage, where a relay took the message and no reply came back
  ///
  /// In en, this message translates to:
  /// **'No relay accepted your message. Check your relays in Settings and try again'**
  String get noRelayAcceptedMessage;

  /// Snackbar shown on the Account screen when no stored identity can be loaded
  ///
  /// In en, this message translates to:
  /// **'No identity found — try restarting the app.'**
  String get noIdentityFoundMessage;

  /// Snackbar shown when loading the secret words fails on the Account screen
  ///
  /// In en, this message translates to:
  /// **'Failed to load secret words. Please try again.'**
  String get failedToLoadSecretWordsMessage;

  /// Title of the privacy modes info dialog on the Account screen
  ///
  /// In en, this message translates to:
  /// **'Privacy Modes'**
  String get privacyModesInfoTitle;

  /// Body of the privacy modes info dialog on the Account screen
  ///
  /// In en, this message translates to:
  /// **'Reputation mode lets others see your successful trades.\n\nFull privacy mode keeps your activity completely anonymous — no reputation is built.'**
  String get privacyModesInfoContent;

  /// Snackbar shown when generating a new identity fails on the Account screen
  ///
  /// In en, this message translates to:
  /// **'Failed to generate identity. Please try again.'**
  String get failedToGenerateIdentityMessage;

  /// Title of the Account screen warning shown while a deleted identity's data wipe is pending retry (issue #555)
  ///
  /// In en, this message translates to:
  /// **'Previous user\'s data is still on this device'**
  String get pendingWipeBannerTitle;

  /// Body of the pending-wipe warning on the Account screen
  ///
  /// In en, this message translates to:
  /// **'Deleting the previous identity could not remove its trades and chats from this device. The app will retry the next time a new user is generated or imported.'**
  String get pendingWipeBannerBody;

  /// Snackbar shown when generating or importing a user is refused because the previous identity's pending data wipe failed again, and the current user was loaded back (issue #555)
  ///
  /// In en, this message translates to:
  /// **'The previous user\'s data could not be removed from this device, so the new user was not set up and your current user was kept. Please try again.'**
  String get pendingWipeBlockedMessage;

  /// Snackbar shown when generating or importing a user is refused before the current identity is deleted, because the device could not record that its data wipe is pending (issue #555)
  ///
  /// In en, this message translates to:
  /// **'The current user could not be removed safely, so nothing was changed. Please try again.'**
  String get wipeNotRecordedMessage;

  /// Snackbar shown when generating or importing a user is refused because this session has no database, so the current identity cannot be deleted safely until the app restarts (review of #573)
  ///
  /// In en, this message translates to:
  /// **'This device\'s storage is not available right now, so the current user was kept and nothing was changed. Restart the app and try again.'**
  String get identitySwapStorageUnavailableMessage;

  /// Snackbar shown when generating or importing a user is refused after the current identity was deleted, and that identity could not be loaded again — or was loaded but its session could not be rebuilt — in this session (review of #573)
  ///
  /// In en, this message translates to:
  /// **'The new user was not set up, and the current user could not be fully restored. Restart the app to load it again.'**
  String get identitySwapPreviousNotReloadedMessage;

  /// Snackbar shown when an imported mnemonic is invalid on the Account screen
  ///
  /// In en, this message translates to:
  /// **'Invalid secret words. Please check your words and try again.'**
  String get invalidMnemonicMessage;

  /// Validation error shown in the import mnemonic dialog when the phrase is not 12 or 24 words
  ///
  /// In en, this message translates to:
  /// **'Enter your 12 secret words.'**
  String get enterValidMnemonicError;

  /// Snackbar confirming the order book was refreshed from the Account screen
  ///
  /// In en, this message translates to:
  /// **'Order book refreshed'**
  String get orderBookRefreshedMessage;

  /// Snackbar shown when refreshing the order book fails on the Account screen
  ///
  /// In en, this message translates to:
  /// **'Refresh failed'**
  String get refreshFailedMessage;

  /// Label for the refresh action in the Refresh User dialog
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refreshButtonLabel;

  /// Generic OK button label for info dialogs
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get okButtonLabel;

  /// Tooltip for the info icon buttons on the Account screen
  ///
  /// In en, this message translates to:
  /// **'More information'**
  String get moreInformationTooltip;

  /// Badge shown in the Secret Words card header once the backup is complete
  ///
  /// In en, this message translates to:
  /// **'Backed up'**
  String get backedUpBadgeLabel;

  /// Title of the backup reminder banner on the Account screen
  ///
  /// In en, this message translates to:
  /// **'Secure your reputation'**
  String get backupBannerTitle;

  /// Subtitle of the backup reminder banner on the Account screen
  ///
  /// In en, this message translates to:
  /// **'Back up your 12 words — it takes 60 seconds.'**
  String get backupBannerSubtitle;

  /// Snackbar shown when persisting the backup-complete status fails in the backup ritual
  ///
  /// In en, this message translates to:
  /// **'Failed to save backup status. Please try again.'**
  String get failedToSaveBackupStatusMessage;

  /// App bar title for step 1 of the backup ritual
  ///
  /// In en, this message translates to:
  /// **'Step 1 of 3 · Write down your words'**
  String get backupRitualStep1Title;

  /// App bar title for step 2 of the backup ritual
  ///
  /// In en, this message translates to:
  /// **'Step 2 of 3 · Verify'**
  String get backupRitualStep2Title;

  /// App bar title for step 3 of the backup ritual
  ///
  /// In en, this message translates to:
  /// **'Step 3 of 3 · Done'**
  String get backupRitualStep3Title;

  /// Bold lead-in of the warning card on the show-words step
  ///
  /// In en, this message translates to:
  /// **'Write them on paper. '**
  String get backupRitualWarningTitle;

  /// Body of the warning card on the show-words step
  ///
  /// In en, this message translates to:
  /// **'Don\'t store them in photos, screenshots or the cloud — anyone with these 12 words can steal your reputation.'**
  String get backupRitualWarningBody;

  /// Note reminding the user the words are hidden when leaving the ritual
  ///
  /// In en, this message translates to:
  /// **'They will be hidden when you leave this screen'**
  String get wordsHiddenOnLeaveNote;

  /// Primary button on the show-words step that starts verification
  ///
  /// In en, this message translates to:
  /// **'I wrote them down — verify'**
  String get wroteThemDownVerifyButton;

  /// Title of the verification step
  ///
  /// In en, this message translates to:
  /// **'Tap the correct words'**
  String get tapCorrectWordsTitle;

  /// Instructions shown on the verification step
  ///
  /// In en, this message translates to:
  /// **'We ask for 3 at random. If you get them right, we know they\'re safely written down.'**
  String get verifyInstructionsBody;

  /// Label above the option grid for the challenged word
  ///
  /// In en, this message translates to:
  /// **'OPTIONS FOR WORD #{number}'**
  String optionsForWordLabel(int number);

  /// Error shown when the user taps a wrong verification option
  ///
  /// In en, this message translates to:
  /// **'Not quite — check your paper and try again.'**
  String get wrongPickMessage;

  /// Success message shown when all challenged words are verified
  ///
  /// In en, this message translates to:
  /// **'All 3 words correct'**
  String get allWordsCorrectMessage;

  /// Backup verification: back to the 12 words without losing solved slots
  ///
  /// In en, this message translates to:
  /// **'View words'**
  String get reviewWordsButton;

  /// Title of the final done step of the backup ritual
  ///
  /// In en, this message translates to:
  /// **'Your account is backed up'**
  String get accountBackedUpTitle;

  /// Body of the final done step of the backup ritual
  ///
  /// In en, this message translates to:
  /// **'Your reputation is safe. If you ever lose your phone, restore your account with your 12 words.'**
  String get accountBackedUpBody;

  /// Label for a challenged word slot, showing its position in the mnemonic
  ///
  /// In en, this message translates to:
  /// **'Word #{number}'**
  String wordNumberLabel(int number);

  /// Lead-in body text of the backup trigger bottom sheet
  ///
  /// In en, this message translates to:
  /// **'Your reputation lives in a key only you hold. If you lose your phone, you lose that reputation — '**
  String get backupTriggerBody;

  /// Highlighted trailing phrase of the backup trigger body
  ///
  /// In en, this message translates to:
  /// **'back it up in 60 seconds.'**
  String get backupTriggerBodyHighlight;

  /// Step 1 label in the backup trigger sheet preview
  ///
  /// In en, this message translates to:
  /// **'Write your 12 words down on paper'**
  String get backupStepWriteDown;

  /// Step 2 label in the backup trigger sheet preview
  ///
  /// In en, this message translates to:
  /// **'We ask for 3 at random to confirm'**
  String get backupStepVerifyRandom;

  /// Step 3 label in the backup trigger sheet preview
  ///
  /// In en, this message translates to:
  /// **'Done — your account is secured'**
  String get backupStepSecured;

  /// Primary button in the backup trigger sheet
  ///
  /// In en, this message translates to:
  /// **'Back up now'**
  String get backupNowButton;

  /// Link in the backup sheet that closes it; the banner stays on Account
  ///
  /// In en, this message translates to:
  /// **'I\'ll do it later'**
  String get backupLaterButton;

  /// Snackbar shown when connecting a wallet via NWC fails
  ///
  /// In en, this message translates to:
  /// **'Connection failed. Please check your NWC URI and try again.'**
  String get nwcConnectionFailedMessage;

  /// Snackbar shown when the clipboard has no valid NWC URI to paste
  ///
  /// In en, this message translates to:
  /// **'Clipboard does not contain a valid NWC URI.'**
  String get clipboardInvalidNwcUriMessage;

  /// Button that opens the QR scanner on the Connect Wallet screen
  ///
  /// In en, this message translates to:
  /// **'Scan QR'**
  String get scanQrButtonLabel;

  /// Primary button on the Connect Wallet screen
  ///
  /// In en, this message translates to:
  /// **'Connect'**
  String get connectButtonLabel;

  /// Snackbar shown after disconnecting the wallet
  ///
  /// In en, this message translates to:
  /// **'Wallet disconnected'**
  String get walletDisconnectedMessage;

  /// Label for a single relay row on the Wallet Settings screen
  ///
  /// In en, this message translates to:
  /// **'Relay'**
  String get relayLabel;

  /// Button that disconnects the wallet
  ///
  /// In en, this message translates to:
  /// **'Disconnect'**
  String get disconnectButtonLabel;

  /// Suffix showing how many additional relays exist beyond the first
  ///
  /// In en, this message translates to:
  /// **'(+{count} more)'**
  String relaysMoreSuffix(int count);

  /// Subtitle on the notification settings screen
  ///
  /// In en, this message translates to:
  /// **'Choose which events show a notification in the app.'**
  String get chooseNotificationEventsSubtitle;

  /// Title of the trade updates notification toggle
  ///
  /// In en, this message translates to:
  /// **'Trade updates'**
  String get notifTradeUpdatesTitle;

  /// Subtitle of the trade updates notification toggle
  ///
  /// In en, this message translates to:
  /// **'Status changes in your active trades'**
  String get notifTradeUpdatesSubtitle;

  /// Title of the new messages notification toggle
  ///
  /// In en, this message translates to:
  /// **'New messages'**
  String get notifNewMessagesTitle;

  /// Subtitle of the new messages notification toggle
  ///
  /// In en, this message translates to:
  /// **'Messages from your trade counterpart'**
  String get notifNewMessagesSubtitle;

  /// Title of the payment alerts notification toggle
  ///
  /// In en, this message translates to:
  /// **'Payment alerts'**
  String get notifPaymentAlertsTitle;

  /// Subtitle of the payment alerts notification toggle
  ///
  /// In en, this message translates to:
  /// **'Lightning payment confirmations and failures'**
  String get notifPaymentAlertsSubtitle;

  /// Title of the dispute updates notification toggle
  ///
  /// In en, this message translates to:
  /// **'Dispute updates'**
  String get notifDisputeUpdatesTitle;

  /// Subtitle of the dispute updates notification toggle
  ///
  /// In en, this message translates to:
  /// **'Resolver actions and dispute resolutions'**
  String get notifDisputeUpdatesSubtitle;

  /// Title of the Announcements toggle in notification settings (specs/006)
  ///
  /// In en, this message translates to:
  /// **'Announcements'**
  String get notifAnnouncementsTitle;

  /// Subtitle of the Announcements toggle
  ///
  /// In en, this message translates to:
  /// **'Releases, outages and relay changes, signed by the Mostro project'**
  String get notifAnnouncementsSubtitle;

  /// Line above the Announcements toggle: the channel is one-way, nothing is reported back
  ///
  /// In en, this message translates to:
  /// **'Announcements are read from the relays and never answered: nothing about you is sent.'**
  String get announcementsGroupSubtitle;

  /// Label on an info-level announcement card (specs/006 §3.4)
  ///
  /// In en, this message translates to:
  /// **'Announcement'**
  String get announcementLevelInfo;

  /// Label on a warning-level announcement card
  ///
  /// In en, this message translates to:
  /// **'Notice'**
  String get announcementLevelWarning;

  /// Label on a critical (security) announcement card
  ///
  /// In en, this message translates to:
  /// **'Security update'**
  String get announcementLevelCritical;

  /// Button on an announcement card that opens its link externally
  ///
  /// In en, this message translates to:
  /// **'Open link'**
  String get announcementOpenLink;

  /// Semantic label of the bell while a critical announcement is unread
  ///
  /// In en, this message translates to:
  /// **'Notifications, a security update is unread'**
  String get notificationsBellCritical;

  /// Hint text of the currency search field
  ///
  /// In en, this message translates to:
  /// **'Search currencies…'**
  String get searchCurrenciesHint;

  /// Message shown when no currencies match the search
  ///
  /// In en, this message translates to:
  /// **'No currencies found'**
  String get noCurrenciesFoundMessage;

  /// Tooltip for the share logs action
  ///
  /// In en, this message translates to:
  /// **'Share logs'**
  String get shareLogsTooltip;

  /// Tooltip for the share action when there are no logs
  ///
  /// In en, this message translates to:
  /// **'No logs to share'**
  String get noLogsToShareTooltip;

  /// Message shown when there are no log entries
  ///
  /// In en, this message translates to:
  /// **'No log entries'**
  String get noLogEntriesMessage;

  /// Snackbar shown when sharing logs fails
  ///
  /// In en, this message translates to:
  /// **'Failed to share logs'**
  String get failedToShareLogsMessage;

  /// First line of the log report text handed to the share sheet
  ///
  /// In en, this message translates to:
  /// **'Mostro log report'**
  String get logReportShareHeading;

  /// My Trades status filter: all
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get tradeFilterAll;

  /// My Trades status filter: pending
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get tradeFilterPending;

  /// My Trades status filter: waiting invoice
  ///
  /// In en, this message translates to:
  /// **'Waiting Invoice'**
  String get tradeFilterWaitingInvoice;

  /// My Trades status filter: waiting payment
  ///
  /// In en, this message translates to:
  /// **'Waiting Payment'**
  String get tradeFilterWaitingPayment;

  /// My Trades status filter: active
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get tradeFilterActive;

  /// My Trades status filter: fiat sent
  ///
  /// In en, this message translates to:
  /// **'Fiat Sent'**
  String get tradeFilterFiatSent;

  /// My Trades status filter: success
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get tradeFilterSuccess;

  /// My Trades status filter: canceled
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get tradeFilterCanceled;

  /// My Trades status filter: dispute
  ///
  /// In en, this message translates to:
  /// **'Dispute'**
  String get tradeFilterDispute;

  /// Tooltip for the drawer menu button
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menuTooltip;

  /// Title of the empty My Trades state
  ///
  /// In en, this message translates to:
  /// **'No trades'**
  String get noTradesTitle;

  /// Subtitle of the empty My Trades state
  ///
  /// In en, this message translates to:
  /// **'Your active and completed trades will appear here.'**
  String get noTradesSubtitle;

  /// Error shown when the trades list fails to load
  ///
  /// In en, this message translates to:
  /// **'Could not load trades'**
  String get couldNotLoadTradesMessage;

  /// Trade card title when the user is selling Bitcoin
  ///
  /// In en, this message translates to:
  /// **'Selling Bitcoin'**
  String get sellingBitcoin;

  /// Trade card title when the user is buying Bitcoin
  ///
  /// In en, this message translates to:
  /// **'Buying Bitcoin'**
  String get buyingBitcoin;

  /// Instruction for buyer while trade is active
  ///
  /// In en, this message translates to:
  /// **'Once you have sent the money, mark it below. Only open a dispute if the seller stops responding.'**
  String get tradeInstructionActiveBuyer;

  /// Instruction for buyer after marking fiat sent
  ///
  /// In en, this message translates to:
  /// **'Payment marked as sent. Waiting for the seller to confirm receipt and release your sats.'**
  String get tradeInstructionFiatSentBuyer;

  /// Instruction for seller while trade is active
  ///
  /// In en, this message translates to:
  /// **'Contact the buyer with payment instructions via the chat above.'**
  String get tradeInstructionActiveSeller;

  /// Instruction for seller after buyer marks fiat sent
  ///
  /// In en, this message translates to:
  /// **'The buyer has confirmed they sent the payment. Once you verify receipt, release the sats.'**
  String get tradeInstructionFiatSentSeller;

  /// Instruction while a dispute is in progress
  ///
  /// In en, this message translates to:
  /// **'A dispute resolver has been assigned. They will contact you through the app.'**
  String get tradeInstructionDisputed;

  /// Instruction while the order is pending a taker
  ///
  /// In en, this message translates to:
  /// **'Your order is published and waiting for a counterpart to take it. You can cancel it at any time.'**
  String get tradeInstructionPending;

  /// Instruction when the trade was cancelled
  ///
  /// In en, this message translates to:
  /// **'This trade was cancelled. No funds were exchanged.'**
  String get tradeInstructionCancelled;

  /// Generic in-progress instruction fallback
  ///
  /// In en, this message translates to:
  /// **'Trade in progress.'**
  String get tradeInstructionInProgress;

  /// Fallback for the trade amount when the order is unknown
  ///
  /// In en, this message translates to:
  /// **'the agreed amount'**
  String get theAgreedAmount;

  /// Headline while the order is pending
  ///
  /// In en, this message translates to:
  /// **'Waiting for someone to take your order'**
  String get tradeHeadlinePending;

  /// Headline while the order is taken but the trade state is not known in detail
  ///
  /// In en, this message translates to:
  /// **'The trade is being set up'**
  String get tradeHeadlineInProgress;

  /// Headline for buyer while waiting for invoice
  ///
  /// In en, this message translates to:
  /// **'Share a Lightning invoice to receive your sats'**
  String get tradeHeadlineWaitingInvoiceBuyer;

  /// Headline for seller while waiting for invoice
  ///
  /// In en, this message translates to:
  /// **'Waiting for the buyer to share an invoice'**
  String get tradeHeadlineWaitingInvoiceSeller;

  /// Headline for buyer while waiting for payment
  ///
  /// In en, this message translates to:
  /// **'Waiting for the seller to lock the sats'**
  String get tradeHeadlineWaitingPaymentBuyer;

  /// Headline for seller while waiting for payment
  ///
  /// In en, this message translates to:
  /// **'Pay the invoice to lock the sats'**
  String get tradeHeadlineWaitingPaymentSeller;

  /// Headline for buyer to send fiat
  ///
  /// In en, this message translates to:
  /// **'Send {amount} to the seller'**
  String tradeHeadlineActiveBuyer(String amount);

  /// Headline for seller waiting for fiat
  ///
  /// In en, this message translates to:
  /// **'Waiting for the buyer to send {amount}'**
  String tradeHeadlineActiveSeller(String amount);

  /// Headline for buyer waiting for release
  ///
  /// In en, this message translates to:
  /// **'Waiting for the seller to release your sats'**
  String get tradeHeadlineFiatSentBuyer;

  /// Headline for seller to confirm receipt
  ///
  /// In en, this message translates to:
  /// **'Confirm you received {amount}'**
  String tradeHeadlineFiatSentSeller(String amount);

  /// Headline while a dispute is in progress
  ///
  /// In en, this message translates to:
  /// **'Dispute in progress'**
  String get tradeHeadlineDisputed;

  /// Headline when the order was cancelled
  ///
  /// In en, this message translates to:
  /// **'Order cancelled'**
  String get tradeHeadlineCancelled;

  /// Headline while the trade is loading
  ///
  /// In en, this message translates to:
  /// **'Loading trade…'**
  String get tradeHeadlineLoading;

  /// Timer consequence while the order is pending
  ///
  /// In en, this message translates to:
  /// **'If it expires, the order is removed from the book. It won\'t affect your reputation.'**
  String get tradeTimerPendingConsequence;

  /// Trade screen countdown note on a waiting step the taker owes: mostrod puts the order back in the book when it runs out
  ///
  /// In en, this message translates to:
  /// **'If it expires, the order goes back to the book.'**
  String get tradeTimerExpiryBackToBook;

  /// Trade screen countdown note on a waiting step the maker owes: mostrod cancels the order when it runs out
  ///
  /// In en, this message translates to:
  /// **'If it expires, the order is cancelled.'**
  String get tradeTimerExpiryCancelled;

  /// Note under the countdown of an active trade: the time is estimated in Bitcoin blocks, and mostrod's escrow deadline guardian cancels the trade when it runs out
  ///
  /// In en, this message translates to:
  /// **'Approximate time. If it runs out, Mostro cancels the trade.'**
  String get tradeTimerEscrowCancels;

  /// Note under the countdown of a fiat-sent trade: the time is estimated in Bitcoin blocks, and mostrod's escrow deadline guardian opens a dispute when it runs out
  ///
  /// In en, this message translates to:
  /// **'Approximate time. If it runs out, Mostro opens a dispute.'**
  String get tradeTimerEscrowDisputes;

  /// Note under the buyer's countdown of an active trade once it reaches zero: mostrod is about to cancel the trade and refund the seller's sats
  ///
  /// In en, this message translates to:
  /// **'Mostro is about to cancel the trade and return the sats to the seller.'**
  String get tradeTimerEscrowCancellingBuyer;

  /// Note under the seller's countdown of an active trade once it reaches zero: mostrod is about to cancel the trade, and the sats the hold invoice keeps stay in the seller's wallet
  ///
  /// In en, this message translates to:
  /// **'Mostro is about to cancel the trade. Your sats stay in your wallet.'**
  String get tradeTimerEscrowCancellingSeller;

  /// Note under the countdown of a fiat-sent trade once it reaches zero: mostrod is about to open a dispute
  ///
  /// In en, this message translates to:
  /// **'A dispute is about to be opened.'**
  String get tradeTimerEscrowDisputing;

  /// Timeline step: order taken
  ///
  /// In en, this message translates to:
  /// **'Order taken'**
  String get tradeStepOrderTaken;

  /// Timeline step 1 while the user's own order is still in the book and nobody has taken it; once taken the same step reads tradeStepOrderTaken
  ///
  /// In en, this message translates to:
  /// **'Waiting for a taker'**
  String get tradeStepWaitingTaker;

  /// Trade screen timeline, step 2 for the buyer: the seller locks the sats (the seller's version is tradeStepInvoiceSeller)
  ///
  /// In en, this message translates to:
  /// **'The seller locks the sats'**
  String get tradeStepInvoiceBuyer;

  /// Timeline step for seller: lock sats
  ///
  /// In en, this message translates to:
  /// **'You lock the sats'**
  String get tradeStepInvoiceSeller;

  /// Timeline step for buyer: send fiat
  ///
  /// In en, this message translates to:
  /// **'You send the payment'**
  String get tradeStepFiatBuyer;

  /// Timeline step for seller: buyer sends fiat
  ///
  /// In en, this message translates to:
  /// **'The buyer sends the payment'**
  String get tradeStepFiatSeller;

  /// Timeline step for buyer: seller releases sats
  ///
  /// In en, this message translates to:
  /// **'The seller releases your sats'**
  String get tradeStepReleaseBuyer;

  /// Timeline step for seller: confirm and release
  ///
  /// In en, this message translates to:
  /// **'You confirm and release the sats'**
  String get tradeStepReleaseSeller;

  /// Timeline step for buyer, after the release: Mostro pays the buyer's invoice; done once the payout succeeds
  ///
  /// In en, this message translates to:
  /// **'Mostro sends you your sats'**
  String get tradeStepPayoutBuyer;

  /// Timeline step and CTA: rate your counterpart
  ///
  /// In en, this message translates to:
  /// **'Rate the trade'**
  String get tradeStepRate;

  /// Created-at label in the meta footer
  ///
  /// In en, this message translates to:
  /// **'created {date}'**
  String tradeCreatedAtLabel(String date);

  /// Step pill showing progress
  ///
  /// In en, this message translates to:
  /// **'STEP {current} OF {total}'**
  String stepIndicator(int current, int total);

  /// Primary CTA: add Lightning invoice
  ///
  /// In en, this message translates to:
  /// **'Add Lightning invoice'**
  String get addLightningInvoiceButton;

  /// Primary CTA: view dispute
  ///
  /// In en, this message translates to:
  /// **'View dispute'**
  String get viewDisputeButton;

  /// Header of the trade step timeline
  ///
  /// In en, this message translates to:
  /// **'YOUR TRADE'**
  String get yourTradeTimelineTitle;

  /// Snackbar shown when sending a chat message fails
  ///
  /// In en, this message translates to:
  /// **'Failed to send message. Please try again.'**
  String get messageSendFailed;

  /// Shown when the chat room has no valid trade ID
  ///
  /// In en, this message translates to:
  /// **'Invalid trade ID'**
  String get invalidTradeId;

  /// Side panel hint on tablet/desktop chat when no panel is selected
  ///
  /// In en, this message translates to:
  /// **'Select ℹ or 👤\nfor details'**
  String get selectForDetailsHint;

  /// Empty state inside a chat room
  ///
  /// In en, this message translates to:
  /// **'No messages yet.\nSay hello to {handle}!'**
  String noMessagesYet(String handle);

  /// Tooltip for the trade info toggle in the chat room
  ///
  /// In en, this message translates to:
  /// **'Trade Info'**
  String get exchangeInfoTooltip;

  /// Tooltip for the user info toggle in the chat room
  ///
  /// In en, this message translates to:
  /// **'User Info'**
  String get userInfoTooltip;

  /// App bar subtitle in a chat room
  ///
  /// In en, this message translates to:
  /// **'You are chatting with {handle}'**
  String chattingWith(String handle);

  /// Fallback handle when the peer is unknown
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknownPeerHandle;

  /// Chat screen tab: messages
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get messagesTab;

  /// Chat screen tab: disputes
  ///
  /// In en, this message translates to:
  /// **'Disputes'**
  String get disputesTab;

  /// Title of the trade information panel
  ///
  /// In en, this message translates to:
  /// **'Trade Information'**
  String get tradeInformationTitle;

  /// Dispute info card: label over the order ID
  ///
  /// In en, this message translates to:
  /// **'Order ID'**
  String get orderIdLabel;

  /// Label for the fiat amount field
  ///
  /// In en, this message translates to:
  /// **'Fiat Amount'**
  String get fiatAmountLabel;

  /// Label for the sats amount field
  ///
  /// In en, this message translates to:
  /// **'Sats Amount'**
  String get satsAmountLabel;

  /// User information panel: the counterparty shared no reputation for this order (full privacy) or it has not arrived yet
  ///
  /// In en, this message translates to:
  /// **'This user\'s reputation is not available'**
  String get peerReputationUnavailable;

  /// Label for the status field
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get statusLabel;

  /// Label for the payment method field
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethodLabel;

  /// Label for the created date field
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get createdLabel;

  /// Title of the user information panel
  ///
  /// In en, this message translates to:
  /// **'User Information'**
  String get userInformationTitle;

  /// File type chip: video
  ///
  /// In en, this message translates to:
  /// **'Video'**
  String get fileTypeVideo;

  /// File type chip: image
  ///
  /// In en, this message translates to:
  /// **'Image'**
  String get fileTypeImage;

  /// File type chip: archive
  ///
  /// In en, this message translates to:
  /// **'Archive'**
  String get fileTypeArchive;

  /// File type chip: generic file
  ///
  /// In en, this message translates to:
  /// **'File'**
  String get fileTypeFile;

  /// Trade state header amount when buying
  ///
  /// In en, this message translates to:
  /// **'Buying {sats} sats'**
  String buyingSatsAmount(String sats);

  /// Trade state header amount when selling
  ///
  /// In en, this message translates to:
  /// **'Selling {sats} sats'**
  String sellingSatsAmount(String sats);

  /// Link in the trade state header to view the order
  ///
  /// In en, this message translates to:
  /// **'View order'**
  String get viewOrderLink;

  /// Countdown label showing remaining time
  ///
  /// In en, this message translates to:
  /// **'{time} left'**
  String timeLeftLabel(String time);

  /// Add-invoice screen: the daemon answered NotAllowedByStatus — the order moved on (usually an earlier submission was accepted) and the app is re-reading its state
  ///
  /// In en, this message translates to:
  /// **'This order is no longer waiting for an invoice. Updating its status…'**
  String get invoiceNoLongerExpected;

  /// Add-invoice screen: the invoice or lightning address was sent but the node has not answered within the wait (Rust marker InvoiceAwaitingDaemon). Not an error: a late answer still moves the trade on (#615)
  ///
  /// In en, this message translates to:
  /// **'Sent. The node hasn\'t answered yet — you\'ll be taken to the trade as soon as it does.'**
  String get invoiceAwaitingNode;

  /// Add-invoice screen: invoiceAwaitingNode once a further minute passes with no answer. A late rejection is only logged, so the buyer is invited to send the invoice again (#615)
  ///
  /// In en, this message translates to:
  /// **'Still no answer from the node. If the trade doesn\'t move on, send it again.'**
  String get invoiceAwaitingNodeLong;

  /// Add-invoice screen: a second submission was refused because an earlier one for the same trade is still waiting for the daemon's reply (Rust marker InvoiceSubmitInFlight)
  ///
  /// In en, this message translates to:
  /// **'An invoice for this order is already being sent. Wait for the reply.'**
  String get invoiceSubmitInFlight;

  /// Snackbar when submitting an LN address before the sats amount is known
  ///
  /// In en, this message translates to:
  /// **'Waiting for trade amount — please try again shortly.'**
  String get waitingForTradeAmount;

  /// Loading text while resolving the trade amount
  ///
  /// In en, this message translates to:
  /// **'Fetching trade amount…'**
  String get fetchingTradeAmount;

  /// Button to switch to manual invoice entry
  ///
  /// In en, this message translates to:
  /// **'Enter invoice manually'**
  String get enterInvoiceManually;

  /// Answer of the range amount dialog, opened from the take-order button. Same wording as takeOrderButton (DS-CMP-26).
  ///
  /// In en, this message translates to:
  /// **'Take order'**
  String get rangeAmountTakeAction;

  /// Shown when a fixed-sats order amount is outside the node min/max order amount
  ///
  /// In en, this message translates to:
  /// **'Amount must be between {min} and {max} sats for this Mostro node'**
  String orderAmountOutOfRange(int min, int max);

  /// Shown in place of the order preview, with Publish disabled, when the active Mostro node does not list the selected currency in fiat_currencies_accepted and the user already picked that currency or entered an amount or payment methods
  ///
  /// In en, this message translates to:
  /// **'This Mostro node does not accept {currency}. Pick another currency'**
  String orderCurrencyNotAccepted(String currency);

  /// Shown when a market-price order amount converts outside the node min/max order amount, with the range expressed in the user's fiat currency
  ///
  /// In en, this message translates to:
  /// **'Amount must be between {min} and {max} {currency} for this Mostro node'**
  String orderAmountOutOfRangeFiat(int min, int max, String currency);

  /// Price type value: market
  ///
  /// In en, this message translates to:
  /// **'Market'**
  String get priceTypeMarket;

  /// Price type value: fixed
  ///
  /// In en, this message translates to:
  /// **'Fixed'**
  String get priceTypeFixed;

  /// Tooltip for the price type info button
  ///
  /// In en, this message translates to:
  /// **'Price type info'**
  String get priceTypeInfoTooltip;

  /// Label of the premium slider section
  ///
  /// In en, this message translates to:
  /// **'Premium'**
  String get premiumSectionLabel;

  /// Explains why the fixed-price toggle is disabled while a range order is being created
  ///
  /// In en, this message translates to:
  /// **'Fixed price isn\'t available for range orders. Turn off the range to use a fixed price.'**
  String get fixedPriceRangeNotAvailable;

  /// Title of the price types info dialog
  ///
  /// In en, this message translates to:
  /// **'Price Types'**
  String get priceTypesDialogTitle;

  /// Body of the price types info dialog
  ///
  /// In en, this message translates to:
  /// **'Market Price: Your order follows the market rate, with the premium or discount you set.\n\nFixed Price: You set the exact sats amount; it does not follow the market.'**
  String get priceTypesDialogContent;

  /// Create-order screen title (sentence case, not caps)
  ///
  /// In en, this message translates to:
  /// **'New order'**
  String get newOrderTitle;

  /// Amount card title when selling
  ///
  /// In en, this message translates to:
  /// **'How much you sell'**
  String get amountSectionSell;

  /// Amount card title when buying
  ///
  /// In en, this message translates to:
  /// **'How much you buy'**
  String get amountSectionBuy;

  /// Segment: one fiat amount
  ///
  /// In en, this message translates to:
  /// **'Single'**
  String get amountModeSingle;

  /// Segment: min/max fiat range
  ///
  /// In en, this message translates to:
  /// **'Range'**
  String get amountModeRange;

  /// Label of the range minimum field (rendered uppercase)
  ///
  /// In en, this message translates to:
  /// **'Minimum'**
  String get amountMinLabel;

  /// Label of the range maximum field (rendered uppercase)
  ///
  /// In en, this message translates to:
  /// **'Maximum'**
  String get amountMaxLabel;

  /// Counter in the payment-methods card header. Says "selected" (glossary, DS-L10N-4); the key name predates the glossary
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{none selected} =1{1 selected} other{{count} selected}}'**
  String paymentMethodsChosenCount(int count);

  /// Chip that opens the payment-method picker; also the button that turns the custom text into a chip
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get paymentMethodAdd;

  /// Search field hint on the payment-method picker screen
  ///
  /// In en, this message translates to:
  /// **'Search methods'**
  String get paymentMethodSearchHint;

  /// Heading of the free-text method field on the picker screen
  ///
  /// In en, this message translates to:
  /// **'Custom payment method'**
  String get customPaymentMethodLabel;

  /// Price card title
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get priceSectionTitle;

  /// Slider caption: selling with a positive premium
  ///
  /// In en, this message translates to:
  /// **'You sell {premium}% above market price'**
  String premiumSellAbove(String premium);

  /// Slider caption: selling with a negative premium
  ///
  /// In en, this message translates to:
  /// **'You sell {premium}% below market'**
  String premiumSellBelow(String premium);

  /// Slider caption: buying with a negative premium
  ///
  /// In en, this message translates to:
  /// **'You pay {premium}% less than market'**
  String premiumBuyBelow(String premium);

  /// Slider caption: buying with a positive premium
  ///
  /// In en, this message translates to:
  /// **'You pay {premium}% more'**
  String premiumBuyAbove(String premium);

  /// Slider caption at 0% premium
  ///
  /// In en, this message translates to:
  /// **'Exact market price'**
  String get premiumExactMarket;

  /// Note under the fixed sats field
  ///
  /// In en, this message translates to:
  /// **'At a fixed price the order does not follow the market: the sats amount stays exactly as you write it.'**
  String get fixedPriceNote;

  /// Preview line while no amount has been entered
  ///
  /// In en, this message translates to:
  /// **'Write an amount and you\'ll see here how the order looks.'**
  String get previewHintNoAmount;

  /// Preview: market sell with premium. active is the optional expiry suffix
  ///
  /// In en, this message translates to:
  /// **'You sell BTC for {amount} at market price {premium}{active}'**
  String previewSellMarket(String amount, String premium, String active);

  /// Preview: market sell at 0% premium
  ///
  /// In en, this message translates to:
  /// **'You sell BTC for {amount} at market price{active}'**
  String previewSellMarketExact(String amount, String active);

  /// Preview: market buy with premium
  ///
  /// In en, this message translates to:
  /// **'You buy BTC for {amount} at market price {premium}{active}'**
  String previewBuyMarket(String amount, String premium, String active);

  /// Preview: market buy at 0% premium
  ///
  /// In en, this message translates to:
  /// **'You buy BTC for {amount} at market price{active}'**
  String previewBuyMarketExact(String amount, String active);

  /// Preview: fixed-price sell. sats already carries the unit
  ///
  /// In en, this message translates to:
  /// **'You sell {sats} for {amount} at a fixed price{active}'**
  String previewSellFixed(String sats, String amount, String active);

  /// Preview: fixed-price buy
  ///
  /// In en, this message translates to:
  /// **'You buy {sats} for {amount} at a fixed price{active}'**
  String previewBuyFixed(String sats, String amount, String active);

  /// Expiry suffix appended to the preview; hours already carries the unit (24 h)
  ///
  /// In en, this message translates to:
  /// **' · active {hours}'**
  String previewActiveSuffix(String hours);

  /// Primary action of the create-order screen
  ///
  /// In en, this message translates to:
  /// **'Publish order'**
  String get publishOrder;

  /// Accessibility label of the × on a selected payment-method chip
  ///
  /// In en, this message translates to:
  /// **'Remove {method}'**
  String removePaymentMethod(String method);

  /// Unit suffix of the fixed sats field
  ///
  /// In en, this message translates to:
  /// **'sats'**
  String get satsUnitLabel;

  /// A sats figure; amount is already grouped for the locale
  ///
  /// In en, this message translates to:
  /// **'{amount} sats'**
  String satsAmount(String amount);

  /// Order expiry in hours, as shown in the preview
  ///
  /// In en, this message translates to:
  /// **'{hours} h'**
  String durationHours(int hours);

  /// Label of the payment methods section
  ///
  /// In en, this message translates to:
  /// **'Payment methods'**
  String get paymentMethodsLabel;

  /// Hint for the custom payment method input
  ///
  /// In en, this message translates to:
  /// **'Custom payment method…'**
  String get customPaymentMethodHint;

  /// Validation error when the amount is out of range
  ///
  /// In en, this message translates to:
  /// **'Amount must be between {min} and {max}'**
  String amountRangeError(String min, String max);

  /// Title of the range amount dialog
  ///
  /// In en, this message translates to:
  /// **'Enter Amount'**
  String get enterAmountTitle;

  /// Range bounds label in the amount dialog
  ///
  /// In en, this message translates to:
  /// **'Min: {min} – Max: {max} {currency}'**
  String minMaxRangeLabel(String min, String max, String currency);

  /// Snackbar shown when submitting a rating fails
  ///
  /// In en, this message translates to:
  /// **'Rating failed. Please try again.'**
  String get ratingFailed;

  /// Uppercase submit button on the rate screen
  ///
  /// In en, this message translates to:
  /// **'SUBMIT'**
  String get submitUppercaseButton;

  /// Tooltip for a star in the rating selector
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Select 1 star} other{Select {count} stars}}'**
  String selectStarTooltip(int count);

  /// App bar title of the dispute chat screen once the dispute is found (v1's title)
  ///
  /// In en, this message translates to:
  /// **'Dispute Details'**
  String get disputeDetailsTitle;

  /// Dispute info card: label over the dispute ID
  ///
  /// In en, this message translates to:
  /// **'Dispute ID'**
  String get disputeIdLabel;

  /// Label showing the dispute reason
  ///
  /// In en, this message translates to:
  /// **'Reason: {reason}'**
  String disputeReasonLabel(String reason);

  /// Sender label for a person solving the dispute (not the Serbero assistant)
  ///
  /// In en, this message translates to:
  /// **'Resolver'**
  String get solverLabel;

  /// Sender label for Serbero, the node's automated dispute assistant; a product name, not translated
  ///
  /// In en, this message translates to:
  /// **'Serbero'**
  String get serberoLabel;

  /// Banner shown when Serbero, the automated assistant, took the dispute but no messages exist yet
  ///
  /// In en, this message translates to:
  /// **'Serbero, an automated assistant, is helping with your dispute. It will ask you a few questions here and hand the case to a person if needed.'**
  String get disputeSerberoAssigned;

  /// System line in the dispute chat where a person took the dispute over from Serbero
  ///
  /// In en, this message translates to:
  /// **'A dispute resolver has taken over your dispute.'**
  String get disputeSolverTookOver;

  /// App bar title of the dispute chat screen
  ///
  /// In en, this message translates to:
  /// **'Dispute'**
  String get disputeScreenTitle;

  /// Title of the order filter dialog
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filtersDialogTitle;

  /// Button that resets all filters
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get resetButton;

  /// Section label for the currency filter
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get currencyLabel;

  /// Section label for the rating filter
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get ratingLabel;

  /// Button that applies the filters and closes the dialog
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get applyButton;

  /// Accessibility label for a reactive button in the success state
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get successLabel;

  /// Button that copies the Lightning invoice
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copyButton;

  /// Button that shares the Lightning invoice
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get shareButton;

  /// Prompt above a Lightning address confirmation
  ///
  /// In en, this message translates to:
  /// **'Send {sats} sats to:'**
  String sendSatsToAddress(String sats);

  /// Button that returns to edit the Lightning address
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get changeButton;

  /// Snackbar shown when a notification has no linked detail to open
  ///
  /// In en, this message translates to:
  /// **'Unable to open notification details.'**
  String get unableToOpenNotification;

  /// Order-book reason badge: best premium
  ///
  /// In en, this message translates to:
  /// **'Best premium'**
  String get reasonBestPremium;

  /// Order-book reason badge: most reputable
  ///
  /// In en, this message translates to:
  /// **'Most reputable'**
  String get reasonMostReputable;

  /// Caption under an order-book card amount
  ///
  /// In en, this message translates to:
  /// **'Market price'**
  String get marketPriceCaption;


  /// Effective fiat/USD cross rate of a market-price offer under the order-book card amount, after the maker's premium. {rate} is the already formatted number and {currency} the offer's fiat code; place them wherever the language needs them
  ///
  /// In en, this message translates to:
  /// **'~{rate} {currency}/USD'**
  String effectiveRateUsd(String rate, String currency);

  /// Unit word after the trade count in the order-book reputation row
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{trade} other{trades}}'**
  String reputationTradesLabel(int count);

  /// Unit word after the active-days count in the order-book reputation row
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{day} other{days}}'**
  String reputationDaysLabel(int count);

