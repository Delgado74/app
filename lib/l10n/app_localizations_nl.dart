// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appName => 'Mostro';

  @override
  String get loading => 'Laden…';

  @override
  String get actionFailedAnnouncement => 'Actie mislukt';

  @override
  String get cancel => 'Annuleren';

  @override
  String get confirm => 'Bevestigen';

  @override
  String get done => 'Klaar';

  @override
  String get skip => 'Overslaan';

  @override
  String get chatTimestampYesterday => 'Gisteren';

  @override
  String get disputesEmptyState => 'Je disputen verschijnen hier';

  @override
  String get disputeAttachFile => 'Bestand toevoegen';

  @override
  String get disputeWriteMessageHint => 'Schrijf een bericht…';

  @override
  String get disputeSend => 'Versturen';

  @override
  String get orderDispute => 'Dispuut over de order';

  @override
  String get disputeSolverAssigned =>
      'Een solver heeft je dispuut opgepakt en neemt hier binnenkort contact met je op.';

  @override
  String get disputeChatClosed =>
      'Dit dispuut is opgelost. De chat is gesloten.';

  @override
  String get messageCopied => 'Gekopieerd';

  @override
  String get disputeLoadError =>
      'De disputen konden niet worden geladen. Probeer het opnieuw.';

  @override
  String get disputeSolverNotAssigned =>
      'Er heeft nog geen solver dit dispuut opgepakt. Je kunt schrijven zodra iemand dat doet.';

  @override
  String get disputeNotFound => 'Dispuut niet gevonden.';

  @override
  String get disputeNotFoundForOrder =>
      'Geen dispuut gevonden voor deze order.';

  @override
  String get disputeResolved => 'Opgelost';

  @override
  String get disputeSuccessfullyCompleted => 'Met succes afgerond';

  @override
  String get disputeCoopCancelMessage =>
      'De order is in overleg geannuleerd. Er is geen geld overgemaakt.';

  @override
  String orderLabel(String orderId) {
    return 'Order $orderId';
  }

  @override
  String get disputeStatusClosed => 'Gesloten';

  @override
  String disputeWith(String role, String counterparty) {
    return 'Dispuut met $role: $counterparty';
  }

  @override
  String get seller => 'Verkoper';

  @override
  String get buyer => 'Koper';

  @override
  String get disputeStatusInitiated => 'Geopend';

  @override
  String get disputeStatusInProgress => 'In behandeling';

  @override
  String get disputeStatusResolved => 'Opgelost';

  @override
  String get disputeInProgress =>
      'Dit dispuut is in behandeling. Een solver bekijkt je zaak.';

  @override
  String get disputeInstruction1 =>
      'Wacht tot een solver je dispuut oppakt. Deel daarna al het bewijs dat helpt om de situatie duidelijk te maken.';

  @override
  String get disputeInstruction2 =>
      'De uiteindelijke beslissing wordt genomen op grond van het aangedragen bewijs.';

  @override
  String get disputeInstruction3 =>
      'Reageer je niet, dan gaat het systeem ervan uit dat je niet wilt meewerken en kun je het dispuut verliezen.';

  @override
  String disputeOpenedByYouAgainstSeller(String counterparty) {
    return 'Jij hebt dit dispuut geopend tegen verkoper $counterparty; lees hieronder aandachtig verder:';
  }

  @override
  String disputeOpenedByYouAgainstBuyer(String counterparty) {
    return 'Jij hebt dit dispuut geopend tegen koper $counterparty; lees hieronder aandachtig verder:';
  }

  @override
  String get disputeWaitingForAdmin => 'Wachten tot een solver is toegewezen';

  @override
  String get disputeLostFundsToBuyer =>
      'De solver heeft het dispuut in het voordeel van de koper beslist. De sats zijn aan de koper vrijgegeven.';

  @override
  String get disputeLostFundsToSeller =>
      'De solver heeft de order geannuleerd en de sats aan de verkoper teruggegeven. Jij hebt de sats niet ontvangen.';

  @override
  String get walkthroughWelcomeTitle => 'P2P-bitcoin, zonder KYC';

  @override
  String get walkthroughWelcomeBody1 =>
      'Mostro is een peer-to-peer exchange waar je bitcoin verhandelt tegen elke valuta en betaalmethode, zonder KYC en zonder je gegevens aan iemand te geven.';

  @override
  String get walkthroughWelcomeBody2 =>
      'Hij draait op Nostr en is daarmee bestand tegen censuur. Niemand kan je tegenhouden om te handelen.';

  @override
  String get walkthroughPrivacyTitle => 'Privacy vanaf het begin';

  @override
  String get walkthroughPrivacyBody1 =>
      'Mostro maakt voor elke trade een nieuwe identiteit aan, zodat je trades niet aan elkaar te koppelen zijn.';

  @override
  String get walkthroughPrivacyBody2 =>
      'Je bepaalt ook zelf hoe privé je blijft:';

  @override
  String get walkthroughReputationModeName => 'Reputatiemodus';

  @override
  String get walkthroughReputationModeBody =>
      'Anderen zien je geslaagde trades en hoe betrouwbaar je bent.';

  @override
  String get walkthroughFullPrivacyModeName => 'Volledig privé';

  @override
  String get walkthroughFullPrivacyModeBody =>
      'Je bouwt geen reputatie op, maar wat je doet blijft volledig anoniem.';

  @override
  String get walkthroughPrivacyFooter =>
      'Je kunt altijd wisselen in het scherm Account. Sla daar ook je geheime woorden op: dat is de enige manier om je account terug te krijgen.';

  @override
  String get walkthroughHeldTitle => 'Zekerheid bij elke stap';

  @override
  String get walkthroughHeldBody1 =>
      'De sats van de verkoper staan vast tot het einde van de trade. Dat beschermt beide kanten.';

  @override
  String get walkthroughHeldBody2 =>
      'De app is bovendien gemaakt om voor iedereen vanzelfsprekend te werken.';

  @override
  String get walkthroughChatTitle => 'Volledig versleutelde chat';

  @override
  String get walkthroughChatBody1 =>
      'Elke trade heeft een eigen privéchat, end-to-end versleuteld. Alleen jij en je tegenpartij kunnen hem lezen, tenzij een van jullie de sleutel deelt.';

  @override
  String get walkthroughChatBody2 =>
      'Bij een dispuut kan een solver de chat lezen als je de sleutel met de solver deelt, en zo helpen de zaak op te lossen.';

  @override
  String get walkthroughTakeTitle => 'Een order accepteren';

  @override
  String get walkthroughTakeBody1 =>
      'Blader door het orderboek, kies een order die je bevalt en loop de trade stap voor stap door.';

  @override
  String get walkthroughTakeBody2 =>
      'Je kunt het profiel van je tegenpartij bekijken, veilig chatten en de trade zonder gedoe afronden.';

  @override
  String get walkthroughMakeTitle => 'Niet gevonden wat je zoekt?';

  @override
  String get walkthroughMakeBody1 =>
      'Je kunt ook je eigen order plaatsen en wachten tot iemand hem accepteert.';

  @override
  String get walkthroughMakeBody2 =>
      'Kies het bedrag en je favoriete betaalmethode. Mostro regelt de rest.';

  @override
  String get walkthroughNext => 'Volgende';

  @override
  String walkthroughStepCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String walkthroughStepSemantics(int current, int total) {
    return 'Stap $current van $total';
  }

  @override
  String get tabBuyBtc => 'BTC kopen';

  @override
  String get tabSellBtc => 'BTC verkopen';

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
      other: '$countString filters actief',
      one: '1 filter actief',
    );
    return '$_temp0';
  }

  @override
  String get noOrdersAvailable => 'Geen orders beschikbaar';

  @override
  String get justNow => 'Zojuist';

  @override
  String minutesAgo(int m) {
    return '$m min geleden';
  }

  @override
  String hoursAgo(int h) {
    return '$h uur geleden';
  }

  @override
  String daysAgo(int d) {
    String _temp0 = intl.Intl.pluralLogic(
      d,
      locale: localeName,
      other: '$d dagen geleden',
      one: '1 dag geleden',
    );
    return '$_temp0';
  }

  @override
  String get invoiceRejected =>
      'De node heeft deze invoice geweigerd. Controleer het bedrag en de vervaldatum en voeg een nieuwe toe.';

  @override
  String get invoiceCopied => 'Invoice gekopieerd';

  @override
  String get submitButtonLabel => 'Versturen';

  @override
  String get orderAlreadyTaken => 'Deze order is al geaccepteerd';

  @override
  String get nodeProtocolUnsupported =>
      'Deze Mostro-node spreekt een protocolversie die de app niet ondersteunt. Kies een andere node in Instellingen, of kijk of er een app-update is';

  @override
  String get nodeCapabilitiesUnknown =>
      'Nog aan het nagaan wat de geselecteerde Mostro-node ondersteunt. Probeer het zo weer';

  @override
  String get tradeOnOtherNode =>
      'Deze trade hoort bij een andere Mostro-node. Schakel over naar die node om verder te gaan';

  @override
  String get mostroMaintenanceMode =>
      'De Mostro-node waarmee je verbonden bent is in onderhoud. Probeer het later opnieuw, of verbind met een andere Mostro-node in Instellingen';

  @override
  String get storageUnavailable =>
      'De app kan geen orders plaatsen of accepteren zolang de lokale database niet beschikbaar is. Herstart de app en probeer het opnieuw';

  @override
  String get rangeOrderWithSats =>
      'Een bandbreedte-order kan geen vast aantal sats hebben: de prijs wordt bij het accepteren op de marktprijs vastgesteld.';

  @override
  String get orderIdCopied => 'Order-ID gekopieerd';

  @override
  String get comingSoonMessage => 'Komt binnenkort';

  @override
  String get tradeStatusCompleted => 'Afgerond';

  @override
  String get tradeStatusCancelled => 'Geannuleerd';

  @override
  String get tradeStatusDisputed => 'In dispuut';

  @override
  String get accountScreenTitle => 'Account';

  @override
  String get secretWordsTitle => 'Geheime woorden';

  @override
  String get privacyCardTitle => 'Privacy';

  @override
  String get reputationMode => 'Reputatiemodus';

  @override
  String get reputationModeSubtitle =>
      'Je trades tellen mee voor je publieke reputatie';

  @override
  String get fullPrivacyMode => 'Volledig privé';

  @override
  String get fullPrivacyModeSubtitle =>
      'Elke trade gebruikt een nieuwe identiteit, geen reputatie';

  @override
  String get generateNewUserButton => 'Nieuwe gebruiker aanmaken';

  @override
  String get importMostroUserButton => 'Mostro-gebruiker importeren';

  @override
  String get generateNewUserDialogTitle => 'Nieuwe gebruiker aanmaken?';

  @override
  String get generateNewUserDialogContent =>
      'Hiermee maak je een volledig nieuwe identiteit aan. Je huidige geheime woorden werken dan niet meer, dus zorg dat je die hebt opgeslagen voordat je doorgaat.';

  @override
  String get continueButtonLabel => 'Doorgaan';

  @override
  String get importMnemonicDialogTitle => 'Geheime woorden importeren';

  @override
  String get importMnemonicHintText => 'Vul je 12 geheime woorden in';

  @override
  String get importButtonLabel => 'Importeren';

  @override
  String get refreshUserDialogTitle => 'Gebruiker verversen?';

  @override
  String get refreshUserDialogContent =>
      'Hiermee worden je trades en orders opnieuw bij de Mostro-instantie opgehaald. Doe dit als je vermoedt dat je gegevens niet kloppen of er orders ontbreken.';

  @override
  String get hideButtonLabel => 'Verbergen';

  @override
  String get showWordsButton => 'Woorden tonen';

  @override
  String get settingsScreenTitle => 'Instellingen';

  @override
  String get languageSettingTitle => 'Taal';

  @override
  String get appearanceSettingTitle => 'Weergave';

  @override
  String get appearanceDialogTitle => 'Weergave';

  @override
  String get allCurrencies => 'Alle valuta';

  @override
  String get lightningAddressSettingTitle => 'Lightning-adres';

  @override
  String get nwcWalletSettingTitle => 'NWC-wallet';

  @override
  String get relaysSettingTitle => 'Relays';

  @override
  String get pushNotificationsSettingTitle => 'Pushmeldingen';

  @override
  String get logReportSettingTitle => 'Logboekrapport';

  @override
  String get mostroNodeSettingTitle => 'Mostro-node';

  @override
  String get themeDark => 'Donker';

  @override
  String get themeLight => 'Licht';

  @override
  String get themeSystemDefault => 'Systeeminstelling';

  @override
  String get lightningAddressDialogTitle => 'Lightning-adres';

  @override
  String get lightningAddressHintText => 'gebruiker@domein.nl';

  @override
  String get invalidLightningAddressFormat =>
      'Moet de vorm gebruiker@domein hebben';

  @override
  String get clearButtonLabel => 'Wissen';

  @override
  String get saveButtonLabel => 'Opslaan';

  @override
  String get scanQrCodeTitle => 'QR-code scannen';

  @override
  String get selectLanguageTitle => 'Taal kiezen';

  @override
  String get selectCurrencyDialogTitle => 'Valuta kiezen';

  @override
  String get addRelayDialogTitle => 'Relay toevoegen';

  @override
  String get addButtonLabel => 'Toevoegen';

  @override
  String get relayHintText => 'wss://relay.example.com';

  @override
  String get relayErrorMustStartWithWss => 'Moet met wss:// beginnen';

  @override
  String get relayErrorUrlTooShort => 'De URL is te kort';

  @override
  String get relayErrorDuplicate => 'Deze relay staat al in de lijst';

  @override
  String get pasteQrCodeHeading => 'Inhoud van de QR-code plakken';

  @override
  String get pasteButtonLabel => 'Plakken';

  @override
  String get clipboardEmptyError => 'Het klembord is leeg';

  @override
  String get enterValueError => 'Vul een waarde in';

  @override
  String get trustedBadgeLabel => 'Vertrouwd';

  @override
  String get confirmButtonLabel => 'Bevestigen';

  @override
  String get selectMostroNode => 'Kies een node';

  @override
  String get addCustomNode => 'Je eigen node toevoegen';

  @override
  String get nodePubkeyFieldLabel => 'Publieke sleutel';

  @override
  String get nodePubkeyFieldHint => '64 tekens hex of npub…';

  @override
  String get nodeNameOptionalLabel => 'Naam (optioneel)';

  @override
  String get invalidPubkeyFormat =>
      'Vul een geldige publieke sleutel in (64 tekens hex of npub)';

  @override
  String get privateKeyNotAllowed =>
      'Dat is een privésleutel. Deel die nooit; vul de publieke sleutel van de node in';

  @override
  String get nodeAlreadyExists => 'Deze node staat al in de lijst';

  @override
  String get nodeAddedSuccess => 'Node toegevoegd';

  @override
  String nodeSwitchedSuccess(String nodeName) {
    return 'Je gebruikt nu $nodeName';
  }

  @override
  String get errorSwitchingNode =>
      'Overschakelen naar een andere node is mislukt';

  @override
  String get cannotRemoveActiveNode =>
      'De node die je nu gebruikt kun je niet verwijderen. Schakel eerst over naar een andere';

  @override
  String get deleteCustomNodeTitle => 'Node verwijderen';

  @override
  String get deleteCustomNodeMessage =>
      'Deze eigen node uit je lijst verwijderen?';

  @override
  String get deleteCustomNodeConfirm => 'Verwijderen';

  @override
  String get nodeRemovedSuccess => 'Node verwijderd';

  @override
  String get nodeStorageUnavailable =>
      'De lokale database is nog niet klaar. Herstart de app en probeer het opnieuw';

  @override
  String nodeSelectorSubtitle(String code) {
    return 'Orders en valuta voor $code, jouw valuta';
  }

  @override
  String get nodeSelectorSubtitleNoCurrency => 'Openstaande orders per node';

  @override
  String nodeMissingCurrencyChip(String code) {
    return 'GEEN $code';
  }

  @override
  String get nodeOrdersNowLabel => 'orders nu';

  @override
  String get nodeNoOrdersLabel => 'geen orders';

  @override
  String nodeOrdersInCurrency(int count, String code) {
    return '· $count in $code';
  }

  @override
  String get nodeFeeLabel => 'kosten';

  @override
  String get nodeFeeTooltip => 'Mostro verdeelt de kosten over beide partijen.';

  @override
  String get nodePerTradeLabel => 'per trade';

  @override
  String get nodeCustodyLightning => 'Lightning-bewaring';

  @override
  String nodeCustodyCashu(String mint) {
    return 'Cashu-bewaring · $mint';
  }

  @override
  String get nodeCustodyUnknown => 'Bewaring onbekend';

  @override
  String nodeBondPct(String pct) {
    return 'Borg $pct%';
  }

  @override
  String get nodeBondNone => 'Geen borg';

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
  String get nodeStatusNoUsefulOrders => 'Geen orders in jouw valuta';

  @override
  String nodeStatusUnreachable(String ago) {
    return 'Reageert niet · laatst gezien $ago';
  }

  @override
  String get nodeStatusUnreachableNoSignal => 'Reageert niet';

  @override
  String get nodeChoiceSubtitle =>
      'Kies de Mostro-node waarop je wilt handelen';

  @override
  String get nodeOperatorDisclaimer =>
      'Het ontwikkelteam van Mostro is niet verantwoordelijk voor wat node-beheerders met het platform doen. Elke beheerder bestuurt een eigen Mostro-node en is als enige verantwoordelijk voor wat daar gebeurt. Door Mostro te gebruiken neem je de volledige verantwoordelijkheid voor je eigen trades, en erken je dat het ontwikkelteam geen zeggenschap heeft over afzonderlijke node-beheerders.';

  @override
  String get nodeChoiceConfirm => 'Deze node gebruiken';

  @override
  String get nodeChoiceSaveFailed =>
      'Je keuze kon niet worden opgeslagen. Probeer het opnieuw.';

  @override
  String get nodeVerifyKeyWarning =>
      'Controleer de sleutel bij de beheerder. Een valse node kan je orders zien.';

  @override
  String get nodeInvalidPubkeyShort => 'Dit is geen geldige publieke sleutel.';

  @override
  String get nodeNameFieldHint => 'Lokale Mostro';

  @override
  String get nodePubkeyCopied => 'Sleutel gekopieerd';

  @override
  String get nodeNotSelectableOffline => 'Deze node reageert niet';

  @override
  String get nodeStatsLoading => 'Nodegegevens laden';

  @override
  String get nodeSwitchConfirmTitle => 'Van node wisselen?';

  @override
  String nodeSwitchConfirmBody(String currentNode, String newNode) {
    return 'Je hebt een lopende trade op $currentNode. Die blijft daar staan; het orderboek toont voortaan $newNode.';
  }

  @override
  String get nodeSwitchConfirmAction => 'Van node wisselen';

  @override
  String get nodeTradesCheckFailed =>
      'Je trades konden niet worden gecontroleerd. Probeer het opnieuw.';

  @override
  String get notificationsScreenTitle => 'Meldingen';

  @override
  String get markAllAsReadMenuItem => 'Alles markeren als gelezen';

  @override
  String get clearAllMenuItem => 'Alles wissen';

  @override
  String get youMustBackUpYourAccount => 'Maak een back-up van je account';

  @override
  String get tapToViewAndSaveSecretWords =>
      'Tik om je geheime woorden te bekijken en op te slaan.';

  @override
  String get noNotifications => 'Geen meldingen';

  @override
  String get markAsRead => 'Markeren als gelezen';

  @override
  String get deleteNotificationLabel => 'Verwijderen';

  @override
  String get rateScreenHeader => 'BEOORDELEN';

  @override
  String get successfulOrder => 'Geslaagde order';

  @override
  String get closeRatingButton => 'SLUITEN';

  @override
  String get aboutScreenTitle => 'Over';

  @override
  String get linkCopiedToClipboard => 'Link gekopieerd';

  @override
  String get pubkeyLabel => 'Pubkey';

  @override
  String get relaysLabel => 'Relays';

  @override
  String get footerTagline => 'Open source. Non-custodial. Privé.';

  @override
  String get drawerTitle => 'Mostro';

  @override
  String get drawerTagline => 'P2P-exchange';

  @override
  String get drawerStageBadge => 'Beta';

  @override
  String drawerVersion(String version) {
    return 'Versie $version';
  }

  @override
  String get drawerAccountMenuItem => 'Account';

  @override
  String get drawerSettingsMenuItem => 'Instellingen';

  @override
  String get drawerAboutMenuItem => 'Over';

  @override
  String get navOrderBook => 'Orderboek';

  @override
  String get navMyTrades => 'Mijn trades';

  @override
  String get navChat => 'Chat';

  @override
  String get loadingOrders => 'Orders laden…';

  @override
  String get errorLoadingOrders =>
      'De orders konden niet worden geladen. Controleer je verbinding.';

  @override
  String get retry => 'Opnieuw';

  @override
  String disableRelayLabel(String url) {
    return 'Relay $url uitschakelen';
  }

  @override
  String enableRelayLabel(String url) {
    return 'Relay $url inschakelen';
  }

  @override
  String get removeRelayTooltip => 'Relay verwijderen';

  @override
  String get relayAddFailed => 'De relay kon niet worden toegevoegd';

  @override
  String get relayRemoveFailed => 'De relay kon niet worden verwijderd';

  @override
  String get backupRitualSecondFailureMessage =>
      'Dat klopte opnieuw niet. Bekijk je geheime woorden, sla ze op en begin de controle dan van voren af aan.';

  @override
  String get cancelTradeDialogTitle => 'Trade annuleren?';

  @override
  String get cancelTradeDialogContent =>
      'Je vraagt een annulering in overleg aan. De tegenpartij moet ook akkoord gaan voordat de trade helemaal vervalt.';

  @override
  String get cancelTradeDialogContentNotStarted =>
      'De trade is nog niet begonnen, dus hij wordt meteen geannuleerd. De tegenpartij hoeft niet akkoord te gaan.';

  @override
  String get cancelTradeDialogContentMaybeStarted =>
      'Is de trade nog niet begonnen, dan wordt hij meteen geannuleerd. Is hij wel begonnen, dan moet de tegenpartij ook akkoord gaan.';

  @override
  String get noButtonLabel => 'Nee';

  @override
  String get yesButtonLabel => 'Ja';

  @override
  String get yesCancelButtonLabel => 'Ja, annuleren';

  @override
  String get cancelRequestSent => 'Annuleringsverzoek verstuurd';

  @override
  String get cancelRequestFailed =>
      'Annuleren is mislukt. Probeer het opnieuw.';

  @override
  String get tradeCardCancelRequestedByMeTitle => 'Annulering aangevraagd';

  @override
  String get tradeCardCancelRequestedByMeMessage =>
      'Je hebt gevraagd deze trade te annuleren. Hij blijft open tot de tegenpartij ook annuleert. Reageert hij niet, dan kun je een dispuut openen.';

  @override
  String get tradeCardCancelRequestedByPeerTitle =>
      'De tegenpartij wil annuleren';

  @override
  String get tradeCardCancelRequestedByPeerMessage =>
      'De tegenpartij heeft gevraagd deze trade te annuleren. Ga je akkoord, dan eindigt hij zonder dat er geld verschuift; anders gaat de trade door.';

  @override
  String get tradeCancelRequestedByMeNotice =>
      'Je hebt gevraagd deze trade te annuleren. Hij blijft open tot de tegenpartij ook annuleert. Reageert hij niet, dan kun je een dispuut openen.';

  @override
  String get tradeCancelRequestedByPeerNotice =>
      'De tegenpartij heeft gevraagd deze trade te annuleren. Ga je akkoord, dan eindigt hij zonder dat er geld verschuift; anders gaat de trade door.';

  @override
  String get acceptCancelButton => 'Annulering accepteren';

  @override
  String get cancelTradeDialogContentAccept =>
      'De tegenpartij heeft om annulering gevraagd. Nu annuleren beëindigt de trade voor jullie allebei, zonder dat er geld verschuift.';

  @override
  String get fiatSentFailed =>
      'De betaling kon niet als verstuurd worden gemeld. Probeer het opnieuw.';

  @override
  String get releaseFailed => 'Vrijgeven is mislukt. Probeer het opnieuw.';

  @override
  String get releasePendingLabel => 'Vrijgeven… wachten op de node';

  @override
  String get releaseSentNotice =>
      'Vrijgave verzonden. De node kan tot een minuut nodig hebben om die te bevestigen.';

  @override
  String get releaseUnconfirmedNotice =>
      'De node heeft de vrijgave nog niet bevestigd. Als de order niet bijwerkt, kun je opnieuw vrijgeven.';

  @override
  String get cancelTradeButton => 'Trade annuleren';

  @override
  String get payHoldInvoiceButton => 'Invoice betalen';

  @override
  String get openDisputeButton => 'Dispuut openen';

  @override
  String get releaseSatsButton => 'Sats vrijgeven';

  @override
  String get confirmReleaseSatsButton => 'Bevestigen en sats vrijgeven';

  @override
  String get shareOrderButton => 'Order delen';

  @override
  String get orderPillYouAreSelling => 'JE VERKOOPT';

  @override
  String get orderPillYouAreBuying => 'JE KOOPT';

  @override
  String get myOrderSellTitle => 'Je verkooporder';

  @override
  String get myOrderBuyTitle => 'Je kooporder';

  @override
  String get cancelOrderFailed =>
      'De order kon niet worden geannuleerd. Probeer het opnieuw.';

  @override
  String get closeButtonLabel => 'Sluiten';

  @override
  String get copyButtonLabel => 'Kopiëren';

  @override
  String get orderStatusWaitingForTaker => 'Wacht op een tegenpartij';

  @override
  String get orderStatusInProgress => 'Lopend';

  @override
  String get orderStatusExpired => 'Verlopen';

  @override
  String get copyOrderIdTooltip => 'Order-ID kopiëren';

  @override
  String get orderNotFoundTitle => 'Order niet gevonden';

  @override
  String get orderNotFoundMessage => 'Deze order is niet meer beschikbaar.';

  @override
  String get orderCancelledSuccess => 'De order is geannuleerd.';

  @override
  String get aboutDocumentationTitle => 'Documentatie';

  @override
  String get aboutMostroNodeTitle => 'Mostro-node';

  @override
  String get aboutVersionLabel => 'Versie';

  @override
  String get aboutCommitHashLabel => 'Commit-hash';

  @override
  String get aboutLicenseLabel => 'Licentie';

  @override
  String get aboutLicenseName => 'AGPLv3+';

  @override
  String get aboutGithubRepoName => 'MostroP2P/app';

  @override
  String get aboutCopiedToClipboard => 'Gekopieerd';

  @override
  String get aboutLicenseDialogTitle => 'GNU Affero General Public License v3';

  @override
  String get aboutNodeLoadingText => 'Nodegegevens laden…';

  @override
  String get aboutNodeUnavailable => 'Geen nodegegevens beschikbaar';

  @override
  String get aboutNodeRetry => 'Opnieuw';

  @override
  String get aboutLightningNetworkSection => 'Lightning Network';

  @override
  String get aboutFiatCurrenciesLabel => 'Fiatvaluta';

  @override
  String get aboutPriceSourceLabel => 'Bron';

  @override
  String get aboutPriceSection => 'Prijs';

  @override
  String get aboutPriceSourcesFootnote =>
      'De prijsbronnen zijn de aanbieders achter de koersen die de node nu publiceert; een aanbieder die faalde of werd weggelaten, staat er niet bij.';

  @override
  String get aboutMostroVersionLabel => 'Mostro-versie';

  @override
  String get aboutMostroCommitLabel => 'Mostro-commit';

  @override
  String get aboutHoldInvoiceExpLabel => 'Tijd om sats vast te zetten';

  @override
  String get aboutHoldInvoiceCltvLabel => 'CLTV bij vastzetten';

  @override
  String get aboutInvoiceExpWindowLabel => 'Geldigheidsduur invoice';

  @override
  String get aboutProofOfWorkLabel => 'Proof of work';

  @override
  String get aboutMaxOrdersPerResponseLabel => 'Max. orders per antwoord';

  @override
  String get aboutLndVersionLabel => 'LND-versie';

  @override
  String get aboutSupportedChainsLabel => 'Ondersteunde chains';

  @override
  String get aboutSupportedNetworksLabel => 'Ondersteunde netwerken';

  @override
  String get aboutSatoshisSuffix => 'Satoshi';

  @override
  String get aboutBlocksSuffix => 'blokken';

  @override
  String get aboutFiatCurrenciesAll => 'Alle';

  @override
  String get aboutAntiAbuseBondSection => 'Borg tegen misbruik';

  @override
  String get aboutBondEnabledValue => 'Aan';

  @override
  String get aboutBondDisabledValue => 'Uit';

  @override
  String get aboutBondUnsupportedValue => 'Niet ondersteund';

  @override
  String get aboutBondStatusLabel => 'Status van de borg';

  @override
  String get aboutBondAppliesToLabel => 'Geldt voor';

  @override
  String get aboutBondAppliesToTakers => 'Wie accepteert';

  @override
  String get aboutBondAppliesToMakers => 'Wie plaatst';

  @override
  String get aboutBondAppliesToBoth => 'Beide partijen';

  @override
  String get aboutBondAmountLabel => 'Hoogte van de borg';

  @override
  String get aboutBondBaseAmountLabel => 'Minimale borg';

  @override
  String get aboutBondNodeShareLabel => 'Deel voor de node bij inhouding';

  @override
  String get aboutBondSlashOnTimeoutLabel => 'Inhouden bij te lang wachten';

  @override
  String get aboutBondClaimWindowLabel => 'Ophaaltermijn';

  @override
  String aboutBondClaimWindowValue(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString dagen',
      one: '$countString dag',
    );
    return '$_temp0';
  }

  @override
  String get openDisputeFailed =>
      'Het dispuut kon niet worden geopend. Probeer het opnieuw.';

  @override
  String get openDisputeTitle => 'Dispuut openen';

  @override
  String get openDisputeConfirmation =>
      'Weet je zeker dat je een dispuut wilt openen? Daarmee gaat de trade naar een solver en dat kan niet ongedaan worden gemaakt.';

  @override
  String get disputeAlreadyOpen => 'Voor deze trade loopt al een dispuut.';

  @override
  String get tradeNotDisputable =>
      'Een dispuut kan pas worden geopend zodra het geld voor deze trade vaststaat.';

  @override
  String get tradeWaitingInvoiceBuyerInstruction =>
      'Lever je Lightning-invoice aan, zodat de verkoper het geld kan vastzetten.';

  @override
  String get tradeWaitingInvoiceSellerInstruction =>
      'Wacht tot de koper zijn Lightning-invoice aanlevert.';

  @override
  String get tradeWaitingPaymentSellerInstruction =>
      'Betaal de invoice om de sats in je wallet vast te zetten en de trade te starten.';

  @override
  String get tradeLoadError => 'Er ging iets mis bij het laden van de trade.';

  @override
  String get tradeWaitingForHoldInvoice => 'Wachten op de invoice…';

  @override
  String get shareButtonLabel => 'Delen';

  @override
  String get shareFailed => 'De invoice kon niet worden gedeeld';

  @override
  String get waitingForPaymentConfirmation =>
      'Wachten op bevestiging van de betaling…';

  @override
  String get orderNoLongerActive => 'Deze order is niet meer actief';

  @override
  String get tradeNoLongerYours => 'Je hoort niet meer bij deze trade';

  @override
  String get sessionTimeoutMessage =>
      'Geen antwoord ontvangen, controleer je verbinding en probeer het later opnieuw';

  @override
  String get noRelayAcceptedMessage =>
      'Geen enkele relay heeft je bericht geaccepteerd. Controleer je relays in Instellingen en probeer het opnieuw';

  @override
  String get noIdentityFoundMessage =>
      'Geen identiteit gevonden. Herstart de app.';

  @override
  String get failedToLoadSecretWordsMessage =>
      'De geheime woorden konden niet worden geladen. Probeer het opnieuw.';

  @override
  String get privacyModesInfoTitle => 'Privacymodi';

  @override
  String get privacyModesInfoContent =>
      'In de reputatiemodus zien anderen je geslaagde trades.\n\nVolledig privé houdt alles wat je doet anoniem, maar je bouwt dan geen reputatie op.';

  @override
  String get failedToGenerateIdentityMessage =>
      'De identiteit kon niet worden aangemaakt. Probeer het opnieuw.';

  @override
  String get pendingWipeBannerTitle =>
      'De gegevens van de vorige gebruiker staan nog op dit apparaat';

  @override
  String get pendingWipeBannerBody =>
      'Bij het verwijderen van de vorige identiteit konden de trades en chats niet van dit apparaat worden gewist. De app probeert het opnieuw wanneer een nieuwe gebruiker wordt aangemaakt of geïmporteerd.';

  @override
  String get pendingWipeBlockedMessage =>
      'De gegevens van de vorige gebruiker konden niet van dit apparaat worden verwijderd, dus de nieuwe gebruiker is niet ingesteld en je huidige gebruiker is behouden. Probeer het opnieuw.';

  @override
  String get wipeNotRecordedMessage =>
      'De huidige gebruiker kon niet veilig worden verwijderd, dus er is niets gewijzigd. Probeer het opnieuw.';

  @override
  String get identitySwapStorageUnavailableMessage =>
      'De opslag van het apparaat is nu niet beschikbaar, dus de huidige gebruiker is behouden en er is niets gewijzigd. Start de app opnieuw en probeer het nog eens.';

  @override
  String get identitySwapPreviousNotReloadedMessage =>
      'De nieuwe gebruiker is niet ingesteld, en de huidige gebruiker kon niet volledig worden hersteld. Start de app opnieuw om hem opnieuw te laden.';

  @override
  String get invalidMnemonicMessage =>
      'Ongeldige geheime woorden. Controleer je woorden en probeer het opnieuw.';

  @override
  String get enterValidMnemonicError => 'Vul je 12 geheime woorden in.';

  @override
  String get orderBookRefreshedMessage => 'Orderboek ververst';

  @override
  String get refreshFailedMessage => 'Verversen mislukt';

  @override
  String get refreshButtonLabel => 'Verversen';

  @override
  String get okButtonLabel => 'OK';

  @override
  String get moreInformationTooltip => 'Meer informatie';

  @override
  String get backedUpBadgeLabel => 'Veiliggesteld';

  @override
  String get backupBannerTitle => 'Stel je reputatie veilig';

  @override
  String get backupBannerSubtitle =>
      'Sla je 12 woorden op. Het kost een minuut.';

  @override
  String get failedToSaveBackupStatusMessage =>
      'De back-upstatus kon niet worden opgeslagen. Probeer het opnieuw.';

  @override
  String get backupRitualStep1Title => 'Stap 1 van 3 · Schrijf je woorden op';

  @override
  String get backupRitualStep2Title => 'Stap 2 van 3 · Controleren';

  @override
  String get backupRitualStep3Title => 'Stap 3 van 3 · Klaar';

  @override
  String get backupRitualWarningTitle => 'Schrijf ze op papier. ';

  @override
  String get backupRitualWarningBody =>
      'Bewaar ze niet in foto’s, schermafbeeldingen of de cloud: wie deze 12 woorden heeft, kan je reputatie stelen.';

  @override
  String get wordsHiddenOnLeaveNote =>
      'Ze worden verborgen zodra je dit scherm verlaat';

  @override
  String get wroteThemDownVerifyButton => 'Opgeschreven, nu controleren';

  @override
  String get tapCorrectWordsTitle => 'Tik de juiste woorden aan';

  @override
  String get verifyInstructionsBody =>
      'We vragen er 3 willekeurig. Heb je ze goed, dan weten we dat ze veilig op papier staan.';

  @override
  String optionsForWordLabel(int number) {
    return 'KEUZES VOOR WOORD #$number';
  }

  @override
  String get wrongPickMessage =>
      'Net niet. Kijk op je papier en probeer het opnieuw.';

  @override
  String get allWordsCorrectMessage => 'Alle 3 de woorden goed';

  @override
  String get reviewWordsButton => 'Woorden bekijken';

  @override
  String get accountBackedUpTitle => 'Je account is veiliggesteld';

  @override
  String get accountBackedUpBody =>
      'Je reputatie is veilig. Raak je ooit je telefoon kwijt, dan herstel je je account met je 12 woorden.';

  @override
  String wordNumberLabel(int number) {
    return 'Woord #$number';
  }

  @override
  String get backupTriggerBody =>
      'Je reputatie zit in een sleutel die alleen jij hebt. Raak je je telefoon kwijt, dan ben je die reputatie kwijt. ';

  @override
  String get backupTriggerBodyHighlight => 'Stel hem in een minuut veilig.';

  @override
  String get backupStepWriteDown => 'Schrijf je 12 woorden op papier';

  @override
  String get backupStepVerifyRandom =>
      'We vragen er 3 willekeurig ter controle';

  @override
  String get backupStepSecured => 'Klaar: je account is veiliggesteld';

  @override
  String get backupNowButton => 'Nu veiligstellen';

  @override
  String get backupLaterButton => 'Later';

  @override
  String get nwcConnectionFailedMessage =>
      'Verbinden is mislukt. Controleer je NWC-URI en probeer het opnieuw.';

  @override
  String get clipboardInvalidNwcUriMessage =>
      'Op het klembord staat geen geldige NWC-URI.';

  @override
  String get scanQrButtonLabel => 'QR scannen';

  @override
  String get connectButtonLabel => 'Verbinden';

  @override
  String get walletDisconnectedMessage => 'Wallet losgekoppeld';

  @override
  String get relayLabel => 'Relay';

  @override
  String get disconnectButtonLabel => 'Verbreken';

  @override
  String relaysMoreSuffix(int count) {
    return '(+$count meer)';
  }

  @override
  String get chooseNotificationEventsSubtitle =>
      'Kies waarvoor je een melding in de app krijgt.';

  @override
  String get notifTradeUpdatesTitle => 'Wijzigingen in trades';

  @override
  String get notifTradeUpdatesSubtitle =>
      'Statuswijzigingen in je lopende trades';

  @override
  String get notifNewMessagesTitle => 'Nieuwe berichten';

  @override
  String get notifNewMessagesSubtitle => 'Berichten van je tegenpartij';

  @override
  String get notifPaymentAlertsTitle => 'Betaalmeldingen';

  @override
  String get notifPaymentAlertsSubtitle =>
      'Bevestigde en mislukte Lightning-betalingen';

  @override
  String get notifDisputeUpdatesTitle => 'Wijzigingen in disputen';

  @override
  String get notifDisputeUpdatesSubtitle =>
      'Acties van de solver en uitkomsten van disputen';

  @override
  String get notifAnnouncementsTitle => 'Aankondigingen';

  @override
  String get notifAnnouncementsSubtitle =>
      'Versies, storingen en relaywijzigingen, ondertekend door het Mostro-project';

  @override
  String get announcementsGroupSubtitle =>
      'Aankondigingen worden van de relays gelezen en nooit beantwoord: er wordt niets over jou verstuurd.';

  @override
  String get announcementLevelInfo => 'Aankondiging';

  @override
  String get announcementLevelWarning => 'Mededeling';

  @override
  String get announcementLevelCritical => 'Beveiligingsupdate';

  @override
  String get announcementOpenLink => 'Link openen';

  @override
  String get notificationsBellCritical =>
      'Meldingen, een ongelezen beveiligingsupdate';

  @override
  String get searchCurrenciesHint => 'Valuta zoeken…';

  @override
  String get noCurrenciesFoundMessage => 'Geen valuta gevonden';

  @override
  String get shareLogsTooltip => 'Logboek delen';

  @override
  String get noLogsToShareTooltip => 'Geen logboek om te delen';

  @override
  String get noLogEntriesMessage => 'Geen logregels';

  @override
  String get failedToShareLogsMessage => 'Het logboek kon niet worden gedeeld';

  @override
  String get logReportShareHeading => 'Mostro-logboekrapport';

  @override
  String get tradeFilterAll => 'Alle';

  @override
  String get tradeFilterPending => 'In afwachting';

  @override
  String get tradeFilterWaitingInvoice => 'Wacht op invoice';

  @override
  String get tradeFilterWaitingPayment => 'Wacht op betaling';

  @override
  String get tradeFilterActive => 'Actief';

  @override
  String get tradeFilterFiatSent => 'Fiat verstuurd';

  @override
  String get tradeFilterSuccess => 'Gelukt';

  @override
  String get tradeFilterCanceled => 'Geannuleerd';

  @override
  String get tradeFilterDispute => 'Dispuut';

  @override
  String get menuTooltip => 'Menu';

  @override
  String get noTradesTitle => 'Geen trades';

  @override
  String get noTradesSubtitle =>
      'Je lopende en afgeronde trades verschijnen hier.';

  @override
  String get couldNotLoadTradesMessage =>
      'De trades konden niet worden geladen';

  @override
  String get sellingBitcoin => 'Bitcoin verkopen';

  @override
  String get buyingBitcoin => 'Bitcoin kopen';

  @override
  String get tradeInstructionActiveBuyer =>
      'Heb je het geld overgemaakt, meld dat dan hieronder. Open alleen een dispuut als de verkoper niet meer reageert.';

  @override
  String get tradeInstructionFiatSentBuyer =>
      'Je hebt de betaling als verstuurd gemeld. Wacht tot de verkoper de ontvangst bevestigt en je sats vrijgeeft.';

  @override
  String get tradeInstructionActiveSeller =>
      'Laat de koper via de chat hierboven weten hoe er betaald moet worden.';

  @override
  String get tradeInstructionFiatSentSeller =>
      'De koper heeft bevestigd dat de betaling is verstuurd. Controleer of het binnen is en geef daarna de sats vrij.';

  @override
  String get tradeInstructionDisputed =>
      'Er is een solver toegewezen, die via de app contact met je opneemt.';

  @override
  String get tradeInstructionPending =>
      'Je order staat gepubliceerd en wacht op een tegenpartij. Je kunt hem altijd annuleren.';

  @override
  String get tradeInstructionCancelled =>
      'Deze trade is geannuleerd. Er is geen geld overgemaakt.';

  @override
  String get tradeInstructionInProgress => 'Trade loopt.';

  @override
  String get theAgreedAmount => 'het afgesproken bedrag';

  @override
  String get tradeHeadlinePending => 'Wachten op een tegenpartij';

  @override
  String get tradeHeadlineInProgress => 'De trade wordt opgezet';

  @override
  String get tradeHeadlineWaitingInvoiceBuyer =>
      'Deel een Lightning-invoice om je sats te ontvangen';

  @override
  String get tradeHeadlineWaitingInvoiceSeller =>
      'Wachten tot de koper een invoice deelt';

  @override
  String get tradeHeadlineWaitingPaymentBuyer =>
      'Wachten tot de verkoper de sats vastzet';

  @override
  String get tradeHeadlineWaitingPaymentSeller =>
      'Betaal de invoice om de sats vast te zetten';

  @override
  String tradeHeadlineActiveBuyer(String amount) {
    return 'Maak $amount over aan de verkoper';
  }

  @override
  String tradeHeadlineActiveSeller(String amount) {
    return 'Wachten tot de koper $amount overmaakt';
  }

  @override
  String get tradeHeadlineFiatSentBuyer =>
      'Wachten tot de verkoper je sats vrijgeeft';

  @override
  String tradeHeadlineFiatSentSeller(String amount) {
    return 'Bevestig dat je $amount hebt ontvangen';
  }

  @override
  String get tradeHeadlineDisputed => 'Dispuut in behandeling';

  @override
  String get tradeHeadlineCancelled => 'Order geannuleerd';

  @override
  String get tradeHeadlineLoading => 'Trade laden…';

  @override
  String get tradeTimerPendingConsequence =>
      'Verloopt de tijd, dan gaat de order uit het orderboek. Dat raakt je reputatie niet.';

  @override
  String get tradeTimerExpiryBackToBook =>
      'Verloopt de tijd, dan komt de order terug in het orderboek.';

  @override
  String get tradeTimerExpiryCancelled =>
      'Verloopt de tijd, dan wordt de order geannuleerd.';

  @override
  String get tradeTimerEscrowCancels =>
      'Geschatte tijd. Is die om, dan annuleert Mostro de trade.';

  @override
  String get tradeTimerEscrowDisputes =>
      'Geschatte tijd. Is die om, dan opent Mostro een dispuut.';

  @override
  String get tradeTimerEscrowCancellingBuyer =>
      'Mostro annuleert zo de trade en geeft de sats terug aan de verkoper.';

  @override
  String get tradeTimerEscrowCancellingSeller =>
      'Mostro annuleert zo de trade. Je sats blijven in je wallet.';

  @override
  String get tradeTimerEscrowDisputing => 'Er wordt zo een dispuut geopend.';

  @override
  String get tradeStepOrderTaken => 'Order geaccepteerd';

  @override
  String get tradeStepWaitingTaker => 'Wacht op een tegenpartij';

  @override
  String get tradeStepInvoiceBuyer => 'De verkoper zet de sats vast';

  @override
  String get tradeStepInvoiceSeller => 'Jij zet de sats vast';

  @override
  String get tradeStepFiatBuyer => 'Jij betaalt';

  @override
  String get tradeStepFiatSeller => 'De koper betaalt';

  @override
  String get tradeStepReleaseBuyer => 'De verkoper geeft je sats vrij';

  @override
  String get tradeStepReleaseSeller => 'Jij bevestigt en geeft de sats vrij';

  @override
  String get tradeStepPayoutBuyer => 'Mostro stuurt je je sats';

  @override
  String get tradeStepRate => 'Beoordeel de trade';

  @override
  String tradeCreatedAtLabel(String date) {
    return 'aangemaakt $date';
  }

  @override
  String stepIndicator(int current, int total) {
    return 'STAP $current VAN $total';
  }

  @override
  String get addLightningInvoiceButton => 'Lightning-invoice toevoegen';

  @override
  String get viewDisputeButton => 'Dispuut bekijken';

  @override
  String get yourTradeTimelineTitle => 'JOUW TRADE';

  @override
  String get messageSendFailed =>
      'Het bericht kon niet worden verstuurd. Probeer het opnieuw.';

  @override
  String get invalidTradeId => 'Ongeldig trade-ID';

  @override
  String get selectForDetailsHint => 'Kies ℹ of 👤\nvoor details';

  @override
  String noMessagesYet(String handle) {
    return 'Nog geen berichten.\nZeg hallo tegen $handle!';
  }

  @override
  String get exchangeInfoTooltip => 'Tradegegevens';

  @override
  String get userInfoTooltip => 'Gebruikersgegevens';

  @override
  String chattingWith(String handle) {
    return 'Je chat met $handle';
  }

  @override
  String get unknownPeerHandle => 'Onbekend';

  @override
  String get messagesTab => 'Berichten';

  @override
  String get disputesTab => 'Disputen';

  @override
  String get tradeInformationTitle => 'Tradegegevens';

  @override
  String get orderIdLabel => 'Order-ID';

  @override
  String get fiatAmountLabel => 'Fiatbedrag';

  @override
  String get satsAmountLabel => 'Aantal sats';

  @override
  String get peerReputationUnavailable =>
      'De reputatie van deze gebruiker is niet beschikbaar';

  @override
  String get statusLabel => 'Status';

  @override
  String get paymentMethodLabel => 'Betaalmethode';

  @override
  String get createdLabel => 'Aangemaakt';

  @override
  String get userInformationTitle => 'Gebruikersgegevens';

  @override
  String get fileTypeVideo => 'Video';

  @override
  String get fileTypeImage => 'Afbeelding';

  @override
  String get fileTypeArchive => 'Archief';

  @override
  String get fileTypeFile => 'Bestand';

  @override
  String buyingSatsAmount(String sats) {
    return 'Je koopt $sats sats';
  }

  @override
  String sellingSatsAmount(String sats) {
    return 'Je verkoopt $sats sats';
  }

  @override
  String get viewOrderLink => 'Order bekijken';

  @override
  String timeLeftLabel(String time) {
    return 'nog $time';
  }

  @override
  String get invoiceNoLongerExpected =>
      'Deze order wacht niet meer op een invoice. De status wordt bijgewerkt…';

  @override
  String get invoiceAwaitingNode =>
      'Verzonden. De node heeft nog niet geantwoord; je gaat naar de trade zodra hij dat doet.';

  @override
  String get invoiceAwaitingNodeLong =>
      'Nog steeds geen antwoord van de node. Als de trade niet verdergaat, stuur hem opnieuw.';

  @override
  String get invoiceSubmitInFlight =>
      'Er wordt al een invoice voor deze order verstuurd. Wacht op het antwoord.';

  @override
  String get waitingForTradeAmount =>
      'Wachten op het tradebedrag. Probeer het zo weer.';

  @override
  String get fetchingTradeAmount => 'Tradebedrag ophalen…';

  @override
  String get enterInvoiceManually => 'Invoice handmatig invullen';

  @override
  String get rangeAmountTakeAction => 'Order accepteren';

  @override
  String orderAmountOutOfRange(int min, int max) {
    return 'Het bedrag moet tussen $min en $max sats liggen voor deze Mostro-node';
  }

  @override
  String orderCurrencyNotAccepted(String currency) {
    return 'Deze Mostro-node accepteert geen $currency. Kies een andere valuta';
  }

  @override
  String orderAmountOutOfRangeFiat(int min, int max, String currency) {
    return 'Het bedrag moet tussen $min en $max $currency liggen voor deze Mostro-node';
  }

  @override
  String get priceTypeMarket => 'Markt';

  @override
  String get priceTypeFixed => 'Vast';

  @override
  String get priceTypeInfoTooltip => 'Over de prijssoort';

  @override
  String get premiumSectionLabel => 'Premie';

  @override
  String get fixedPriceRangeNotAvailable =>
      'Een vaste prijs kan niet bij een bandbreedte-order. Zet de bandbreedte uit om een vaste prijs te gebruiken.';

  @override
  String get priceTypesDialogTitle => 'Prijssoorten';

  @override
  String get priceTypesDialogContent =>
      'Marktprijs: je order volgt de marktkoers, met de premie of korting die je instelt.\n\nVaste prijs: je legt het exacte aantal sats vast; dat volgt de markt niet.';

  @override
  String get newOrderTitle => 'Nieuwe order';

  @override
  String get amountSectionSell => 'Hoeveel je verkoopt';

  @override
  String get amountSectionBuy => 'Hoeveel je koopt';

  @override
  String get amountModeSingle => 'Eén bedrag';

  @override
  String get amountModeRange => 'Bandbreedte';

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
      other: '$countString geselecteerd',
      one: '1 geselecteerd',
      zero: 'niets geselecteerd',
    );
    return '$_temp0';
  }

  @override
  String get paymentMethodAdd => 'Toevoegen';

  @override
  String get paymentMethodSearchHint => 'Methodes zoeken';

  @override
  String get customPaymentMethodLabel => 'Eigen betaalmethode';

  @override
  String get priceSectionTitle => 'Prijs';

  @override
  String premiumSellAbove(String premium) {
    return 'Je verkoopt $premium% boven de marktprijs';
  }

  @override
  String premiumSellBelow(String premium) {
    return 'Je verkoopt $premium% onder de markt';
  }

  @override
  String premiumBuyBelow(String premium) {
    return 'Je betaalt $premium% minder dan de markt';
  }

  @override
  String premiumBuyAbove(String premium) {
    return 'Je betaalt $premium% meer';
  }

  @override
  String get premiumExactMarket => 'Precies de marktprijs';

  @override
  String get fixedPriceNote =>
      'Bij een vaste prijs volgt de order de markt niet: het aantal sats blijft precies zoals jij het invult.';

  @override
  String get previewHintNoAmount =>
      'Vul een bedrag in, dan zie je hier hoe de order eruitziet.';

  @override
  String previewSellMarket(String amount, String premium, String active) {
    return 'Je verkoopt BTC voor $amount tegen marktprijs $premium$active';
  }

  @override
  String previewSellMarketExact(String amount, String active) {
    return 'Je verkoopt BTC voor $amount tegen marktprijs$active';
  }

  @override
  String previewBuyMarket(String amount, String premium, String active) {
    return 'Je koopt BTC voor $amount tegen marktprijs $premium$active';
  }

  @override
  String previewBuyMarketExact(String amount, String active) {
    return 'Je koopt BTC voor $amount tegen marktprijs$active';
  }

  @override
  String previewSellFixed(String sats, String amount, String active) {
    return 'Je verkoopt $sats voor $amount tegen een vaste prijs$active';
  }

  @override
  String previewBuyFixed(String sats, String amount, String active) {
    return 'Je koopt $sats voor $amount tegen een vaste prijs$active';
  }

  @override
  String previewActiveSuffix(String hours) {
    return ' · actief $hours';
  }

  @override
  String get publishOrder => 'Order publiceren';

  @override
  String removePaymentMethod(String method) {
    return '$method verwijderen';
  }

  @override
  String get satsUnitLabel => 'sats';

  @override
  String satsAmount(String amount) {
    return '$amount sats';
  }

  @override
  String durationHours(int hours) {
    return '$hours u';
  }

  @override
  String get paymentMethodsLabel => 'Betaalmethodes';

  @override
  String get customPaymentMethodHint => 'Eigen betaalmethode…';

  @override
  String amountRangeError(String min, String max) {
    return 'Het bedrag moet tussen $min en $max liggen';
  }

  @override
  String get enterAmountTitle => 'Bedrag invullen';

  @override
  String minMaxRangeLabel(String min, String max, String currency) {
    return 'Min: $min – Max: $max $currency';
  }

  @override
  String get ratingFailed => 'De beoordeling is mislukt. Probeer het opnieuw.';

  @override
  String get submitUppercaseButton => 'VERSTUREN';

  @override
  String selectStarTooltip(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString sterren geven',
      one: '1 ster geven',
    );
    return '$_temp0';
  }

  @override
  String get disputeDetailsTitle => 'Dispuutgegevens';

  @override
  String get disputeIdLabel => 'Dispuut-ID';

  @override
  String disputeReasonLabel(String reason) {
    return 'Reden: $reason';
  }

  @override
  String get solverLabel => 'Solver';

  @override
  String get serberoLabel => 'Serbero';

  @override
  String get disputeSerberoAssigned =>
      'Serbero, een automatische assistent, helpt bij je dispuut. Hij stelt je hier een paar vragen en geeft de zaak zo nodig door aan een persoon.';

  @override
  String get disputeSolverTookOver =>
      'Een solver heeft je dispuut overgenomen.';

  @override
  String get disputeScreenTitle => 'Dispuut';

  @override
  String get filtersDialogTitle => 'Filters';

  @override
  String get resetButton => 'Herstellen';

  @override
  String get currencyLabel => 'Valuta';

  @override
  String get ratingLabel => 'Beoordeling';

  @override
  String get applyButton => 'Toepassen';

  @override
  String get successLabel => 'Gelukt';

  @override
  String get copyButton => 'Kopiëren';

  @override
  String get shareButton => 'Delen';

  @override
  String sendSatsToAddress(String sats) {
    return 'Stuur $sats sats naar:';
  }

  @override
  String get changeButton => 'Wijzigen';

  @override
  String get unableToOpenNotification => 'De melding kan niet worden geopend.';

  @override
  String get reasonBestPremium => 'Beste premie';

  @override
  String get reasonMostReputable => 'Beste reputatie';

  @override
  String get marketPriceCaption => 'Marktprijs';

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
      other: 'dagen',
      one: 'dag',
    );
    return '$_temp0';
  }

  @override
