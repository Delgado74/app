// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'Mostro';

  @override
  String get loading => 'Laden…';

  @override
  String get actionFailedAnnouncement => 'Aktion fehlgeschlagen';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get done => 'Fertig';

  @override
  String get skip => 'Überspringen';

  @override
  String get chatTimestampYesterday => 'Gestern';

  @override
  String get disputesEmptyState => 'Deine Streitfälle werden hier angezeigt';

  @override
  String get disputeAttachFile => 'Datei anhängen';

  @override
  String get disputeWriteMessageHint => 'Nachricht schreiben…';

  @override
  String get disputeSend => 'Senden';

  @override
  String get orderDispute => 'Order-Streitfall';

  @override
  String get disputeSolverAssigned =>
      'Ein Schlichter hat deinen Streitfall übernommen. Er meldet sich hier in Kürze bei dir.';

  @override
  String get disputeChatClosed =>
      'Dieser Streitfall wurde gelöst. Der Chat ist geschlossen.';

  @override
  String get messageCopied => 'Kopiert';

  @override
  String get disputeLoadError =>
      'Streitfälle konnten nicht geladen werden. Bitte versuche es erneut.';

  @override
  String get disputeSolverNotAssigned =>
      'Noch hat kein Schlichter diesen Streitfall übernommen. Du kannst schreiben, sobald einer ihn übernimmt.';

  @override
  String get disputeNotFound => 'Streitfall nicht gefunden.';

  @override
  String get disputeNotFoundForOrder =>
      'Kein Streitfall für diese Order gefunden.';

  @override
  String get disputeResolved => 'Gelöst';

  @override
  String get disputeSuccessfullyCompleted => 'Erfolgreich abgeschlossen';

  @override
  String get disputeCoopCancelMessage =>
      'Die Order wurde kooperativ storniert. Es wurden keine Mittel übertragen.';

  @override
  String orderLabel(String orderId) {
    return 'Order $orderId';
  }

  @override
  String get disputeStatusClosed => 'Geschlossen';

  @override
  String disputeWith(String role, String counterparty) {
    return 'Streitfall mit $role: $counterparty';
  }

  @override
  String get seller => 'Verkäufer';

  @override
  String get buyer => 'Käufer';

  @override
  String get disputeStatusInitiated => 'Eingeleitet';

  @override
  String get disputeStatusInProgress => 'In Bearbeitung';

  @override
  String get disputeStatusResolved => 'Gelöst';

  @override
  String get disputeInProgress =>
      'Dieser Streitfall wird derzeit bearbeitet. Ein Schlichter prüft deinen Fall.';

  @override
  String get disputeInstruction1 =>
      'Warte darauf, dass ein Schlichter deinen Streitfall übernimmt. Sobald er da ist, teile alle relevanten Beweise mit, um die Situation zu klären.';

  @override
  String get disputeInstruction2 =>
      'Die endgültige Entscheidung wird auf Basis der vorgelegten Beweise getroffen.';

  @override
  String get disputeInstruction3 =>
      'Wenn du nicht antwortest, geht das System davon aus, dass du nicht kooperieren möchtest, und du könntest den Streitfall verlieren.';

  @override
  String disputeOpenedByYouAgainstSeller(String counterparty) {
    return 'Du hast diesen Streitfall gegen den Verkäufer $counterparty eröffnet, bitte lies das Folgende sorgfältig durch:';
  }

  @override
  String disputeOpenedByYouAgainstBuyer(String counterparty) {
    return 'Du hast diesen Streitfall gegen den Käufer $counterparty eröffnet, bitte lies das Folgende sorgfältig durch:';
  }

  @override
  String get disputeWaitingForAdmin => 'Wartet auf einen Schlichter';

  @override
  String get disputeLostFundsToBuyer =>
      'Der Schlichter hat den Streitfall zugunsten des Käufers entschieden. Die Sats wurden an den Käufer freigegeben.';

  @override
  String get disputeLostFundsToSeller =>
      'Der Schlichter hat die Order storniert und die Sats an den Verkäufer zurückgegeben. Du hast keine Sats erhalten.';

  @override
  String get walkthroughWelcomeTitle => 'P2P-Bitcoin ohne KYC';

  @override
  String get walkthroughWelcomeBody1 =>
      'Mostro ist eine Peer-to-Peer-Börse, auf der du Bitcoin in jeder Währung und mit jeder Zahlungsmethode handelst, ohne KYC und ohne deine Daten an irgendjemanden weiterzugeben.';

  @override
  String get walkthroughWelcomeBody2 =>
      'Es basiert auf Nostr und ist dadurch zensurresistent. Niemand kann dich am Handeln hindern.';

  @override
  String get walkthroughPrivacyTitle => 'Privatsphäre als Standard';

  @override
  String get walkthroughPrivacyBody1 =>
      'Mostro erzeugt für jeden Trade eine neue Identität, sodass sich deine Trades nicht miteinander verknüpfen lassen.';

  @override
  String get walkthroughPrivacyBody2 =>
      'Du entscheidest außerdem, wie privat du sein möchtest:';

  @override
  String get walkthroughReputationModeName => 'Reputationsmodus';

  @override
  String get walkthroughReputationModeBody =>
      'Andere sehen deine erfolgreichen Trades und dein Vertrauenslevel.';

  @override
  String get walkthroughFullPrivacyModeName =>
      'Vollständiger Privatsphäre-Modus';

  @override
  String get walkthroughFullPrivacyModeBody =>
      'Es wird keine Reputation aufgebaut, aber deine Aktivität bleibt vollständig anonym.';

  @override
  String get walkthroughPrivacyFooter =>
      'Du kannst den Modus jederzeit auf dem Konto-Bildschirm wechseln. Dort solltest du auch deine geheimen Wörter sichern: Sie sind die einzige Möglichkeit, dein Konto wiederherzustellen.';

  @override
  String get walkthroughHeldTitle => 'Sicherheit bei jedem Schritt';

  @override
  String get walkthroughHeldBody1 =>
      'Die Sats des Verkäufers bleiben bis zum Ende des Trades gesperrt. Das schützt beide Seiten.';

  @override
  String get walkthroughHeldBody2 =>
      'Die App ist außerdem so gestaltet, dass sie für alle intuitiv und einfach zu bedienen ist.';

  @override
  String get walkthroughChatTitle => 'Vollständig verschlüsselter Chat';

  @override
  String get walkthroughChatBody1 =>
      'Jeder Trade hat seinen eigenen privaten Chat, Ende-zu-Ende-verschlüsselt. Nur du und deine Gegenpartei könnt ihn lesen, außer einer von euch teilt seinen Schlüssel.';

  @override
  String get walkthroughChatBody2 =>
      'Im Streitfall kann ein Schlichter den Chat lesen, wenn du diesen Schlüssel mit ihm teilst, und so bei der Lösung helfen.';

  @override
  String get walkthroughTakeTitle => 'Eine Order annehmen';

  @override
  String get walkthroughTakeBody1 =>
      'Durchsuche das Orderbuch, wähle eine Order, die zu dir passt, und folge dem Trade Schritt für Schritt.';

  @override
  String get walkthroughTakeBody2 =>
      'Du kannst das Profil deiner Gegenpartei prüfen, sicher chatten und den Trade problemlos abschließen.';

  @override
  String get walkthroughMakeTitle => 'Findest du nicht, was du brauchst?';

  @override
  String get walkthroughMakeBody1 =>
      'Du kannst auch deine eigene Order erstellen und warten, bis jemand sie annimmt.';

  @override
  String get walkthroughMakeBody2 =>
      'Lege den Betrag und die bevorzugte Zahlungsmethode fest. Mostro erledigt den Rest.';

  @override
  String get walkthroughNext => 'Weiter';

  @override
  String walkthroughStepCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String walkthroughStepSemantics(int current, int total) {
    return 'Schritt $current von $total';
  }

  @override
  String get tabBuyBtc => 'BTC kaufen';

  @override
  String get tabSellBtc => 'BTC verkaufen';

  @override
  String get filterButtonLabel => 'Filtern';

  @override
  String filtersActiveCount(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Filter aktiv',
      one: '1 Filter aktiv',
    );
    return '$_temp0';
  }

  @override
  String get noOrdersAvailable => 'Keine Orders verfügbar';

  @override
  String get justNow => 'gerade eben';

  @override
  String minutesAgo(int m) {
    return 'vor ${m}m';
  }

  @override
  String hoursAgo(int h) {
    return 'vor ${h}h';
  }

  @override
  String daysAgo(int d) {
    return 'vor ${d}T';
  }

  @override
  String get invoiceRejected =>
      'Der Node hat diese Rechnung abgelehnt. Prüfe Betrag und Ablauf und füge eine neue hinzu.';

  @override
  String get invoiceCopied => 'Rechnung kopiert';

  @override
  String get submitButtonLabel => 'Absenden';

  @override
  String get orderAlreadyTaken => 'Die Order wurde bereits angenommen';

  @override
  String get nodeProtocolUnsupported =>
      'Dieser Mostro-Node nutzt eine Protokollversion, die diese App nicht unterstützt. Wähle in den Einstellungen einen anderen Node oder prüfe, ob ein App-Update verfügbar ist';

  @override
  String get nodeCapabilitiesUnknown =>
      'Es wird noch geprüft, was der ausgewählte Mostro-Node unterstützt. Versuche es gleich noch einmal';

  @override
  String get tradeOnOtherNode =>
      'Dieser Trade gehört zu einem anderen Mostro-Node. Wechsle zu diesem Node, um ihn fortzusetzen';

  @override
  String get mostroMaintenanceMode =>
      'Der Mostro-Node, mit dem du verbunden bist, wird gerade gewartet. Versuche es später noch einmal oder verbinde dich in den Einstellungen mit einem anderen Mostro-Node';

  @override
  String get storageUnavailable =>
      'Die App kann keine Orders erstellen oder annehmen, solange ihre lokale Datenbank nicht verfügbar ist. Starte die App neu und versuche es erneut';

  @override
  String get rangeOrderWithSats =>
      'Eine Order mit Betragsspanne kann keinen festen Sats-Betrag haben: Sie wird bei der Annahme zum Marktpreis bewertet.';

  @override
  String get orderIdCopied => 'Order-ID kopiert';

  @override
  String get comingSoonMessage => 'Demnächst verfügbar';

  @override
  String get tradeStatusCompleted => 'Abgeschlossen';

  @override
  String get tradeStatusCancelled => 'Storniert';

  @override
  String get tradeStatusDisputed => 'Streitfall offen';

  @override
  String get accountScreenTitle => 'Konto';

  @override
  String get secretWordsTitle => 'Geheime Wörter';

  @override
  String get privacyCardTitle => 'Privatsphäre';

  @override
  String get reputationMode => 'Reputationsmodus';

  @override
  String get reputationModeSubtitle =>
      'Deine Trades zählen für deine öffentliche Reputation';

  @override
  String get fullPrivacyMode => 'Vollständiger Privatsphäre-Modus';

  @override
  String get fullPrivacyModeSubtitle =>
      'Jeder Trade nutzt eine neue Identität, ohne Reputation';

  @override
  String get generateNewUserButton => 'Neuen Benutzer generieren';

  @override
  String get importMostroUserButton => 'Mostro-Benutzer importieren';

  @override
  String get generateNewUserDialogTitle => 'Neuen Benutzer generieren?';

  @override
  String get generateNewUserDialogContent =>
      'Dadurch wird eine brandneue Identität erstellt. Deine aktuellen geheimen Wörter werden nicht mehr funktionieren — stelle sicher, dass du sie gesichert hast, bevor du fortfährst.';

  @override
  String get continueButtonLabel => 'Weiter';

  @override
  String get importMnemonicDialogTitle => 'Geheime Wörter importieren';

  @override
  String get importMnemonicHintText => 'Gib deine 12 geheimen Wörter ein';

  @override
  String get importButtonLabel => 'Importieren';

  @override
  String get refreshUserDialogTitle => 'Benutzer aktualisieren?';

  @override
  String get refreshUserDialogContent =>
      'Dadurch werden deine Trades und Orders von der Mostro-Instanz erneut abgerufen. Verwende dies, wenn du glaubst, dass deine Daten nicht synchron sind oder Orders fehlen.';

  @override
  String get hideButtonLabel => 'Verbergen';

  @override
  String get showWordsButton => 'Wörter anzeigen';

  @override
  String get settingsScreenTitle => 'Einstellungen';

  @override
  String get languageSettingTitle => 'Sprache';

  @override
  String get appearanceSettingTitle => 'Erscheinungsbild';

  @override
  String get appearanceDialogTitle => 'Erscheinungsbild';

  @override
  String get allCurrencies => 'Alle Währungen';

  @override
  String get lightningAddressSettingTitle => 'Lightning-Adresse';

  @override
  String get nwcWalletSettingTitle => 'NWC-Wallet';

  @override
  String get relaysSettingTitle => 'Relays';

  @override
  String get pushNotificationsSettingTitle => 'Push-Benachrichtigungen';

  @override
  String get logReportSettingTitle => 'Protokollbericht';

  @override
  String get mostroNodeSettingTitle => 'Mostro-Node';

  @override
  String get themeDark => 'Dunkel';

  @override
  String get themeLight => 'Hell';

  @override
  String get themeSystemDefault => 'Systemstandard';

  @override
  String get lightningAddressDialogTitle => 'Lightning-Adresse';

  @override
  String get lightningAddressHintText => 'benutzer@domain.com';

  @override
  String get invalidLightningAddressFormat =>
      'Muss im Format benutzer@domain sein';

  @override
  String get clearButtonLabel => 'Löschen';

  @override
  String get saveButtonLabel => 'Speichern';

  @override
  String get scanQrCodeTitle => 'QR-Code scannen';

  @override
  String get selectLanguageTitle => 'Sprache auswählen';

  @override
  String get selectCurrencyDialogTitle => 'Währung auswählen';

  @override
  String get addRelayDialogTitle => 'Relay hinzufügen';

  @override
  String get addButtonLabel => 'Hinzufügen';

  @override
  String get relayHintText => 'wss://relay.example.com';

  @override
  String get relayErrorMustStartWithWss => 'Muss mit wss:// beginnen';

  @override
  String get relayErrorUrlTooShort => 'URL ist zu kurz';

  @override
  String get relayErrorDuplicate => 'Relay bereits in der Liste';

  @override
  String get pasteQrCodeHeading => 'QR-Code-Inhalt einfügen';

  @override
  String get pasteButtonLabel => 'Einfügen';

  @override
  String get clipboardEmptyError => 'Zwischenablage ist leer';

  @override
  String get enterValueError => 'Bitte einen Wert eingeben';

  @override
  String get trustedBadgeLabel => 'Vertrauenswürdig';

  @override
  String get confirmButtonLabel => 'Bestätigen';

  @override
  String get selectMostroNode => 'Node wählen';

  @override
  String get addCustomNode => 'Eigenen Node hinzufügen';

  @override
  String get nodePubkeyFieldLabel => 'Öffentlicher Schlüssel';

  @override
  String get nodePubkeyFieldHint => '64-stelliges Hex oder npub…';

  @override
  String get nodeNameOptionalLabel => 'Name (optional)';

  @override
  String get invalidPubkeyFormat =>
      'Gib einen gültigen öffentlichen Schlüssel ein (64-stelliges Hex oder npub)';

  @override
  String get privateKeyNotAllowed =>
      'Das ist ein privater Schlüssel — teile ihn niemals. Gib den öffentlichen Schlüssel des Nodes ein';

  @override
  String get nodeAlreadyExists => 'Dieser Node ist bereits in der Liste';

  @override
  String get nodeAddedSuccess => 'Node hinzugefügt';

  @override
  String nodeSwitchedSuccess(String nodeName) {
    return 'Du verwendest jetzt $nodeName';
  }

  @override
  String get errorSwitchingNode => 'Node-Wechsel fehlgeschlagen';

  @override
  String get cannotRemoveActiveNode =>
      'Der aktive Node kann nicht entfernt werden — wechsle zuerst zu einem anderen Node';

  @override
  String get deleteCustomNodeTitle => 'Node entfernen';

  @override
  String get deleteCustomNodeMessage =>
      'Diesen eigenen Node aus deiner Liste entfernen?';

  @override
  String get deleteCustomNodeConfirm => 'Entfernen';

  @override
  String get nodeRemovedSuccess => 'Node entfernt';

  @override
  String get nodeStorageUnavailable =>
      'Die lokale Datenbank ist nicht bereit. Starte die App neu und versuche es erneut';

  @override
  String nodeSelectorSubtitle(String code) {
    return 'Orders und Währungen für $code, deine Währung';
  }

  @override
  String get nodeSelectorSubtitleNoCurrency => 'Offene Orders je Node';

  @override
  String nodeMissingCurrencyChip(String code) {
    return 'OHNE $code';
  }

  @override
  String get nodeOrdersNowLabel => 'Orders jetzt';

  @override
  String get nodeNoOrdersLabel => 'keine Orders';

  @override
  String nodeOrdersInCurrency(int count, String code) {
    return '· $count in $code';
  }

  @override
  String get nodeFeeLabel => 'Gebühr';

  @override
  String get nodeFeeTooltip =>
      'Mostro teilt die Gebühr zwischen beiden Parteien auf.';

  @override
  String get nodePerTradeLabel => 'pro Trade';

  @override
  String get nodeCustodyLightning => 'Lightning-Verwahrung';

  @override
  String nodeCustodyCashu(String mint) {
    return 'Cashu-Verwahrung · $mint';
  }

  @override
  String get nodeCustodyUnknown => 'Verwahrung —';

  @override
  String nodeBondPct(String pct) {
    return 'Einlage $pct%';
  }

  @override
  String get nodeBondNone => 'Keine Einlage';

  @override
  String nodeStatusOnline(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Orders',
      one: '1 Order',
    );
    return 'Online · $_temp0';
  }

  @override
  String get nodeStatusNoUsefulOrders => 'Keine Orders in deinen Währungen';

  @override
  String nodeStatusUnreachable(String ago) {
    return 'Antwortet nicht · letztes Signal $ago';
  }

  @override
  String get nodeStatusUnreachableNoSignal => 'Antwortet nicht';

  @override
  String get nodeChoiceSubtitle =>
      'Wähle den Mostro-Node, auf dem du handeln möchtest';

  @override
  String get nodeOperatorDisclaimer =>
      'Das Mostro-Entwicklungsteam ist nicht verantwortlich für die Nutzung der Plattform durch Node-Betreiber. Jeder Betreiber kontrolliert seinen eigenen Mostro-Node und ist allein verantwortlich für seine Handlungen. Mit der Nutzung von Mostro akzeptierst du die volle Verantwortung für deine Trades und erkennst an, dass das Entwicklungsteam keine Kontrolle über einzelne Node-Betreiber hat.';

  @override
  String get nodeChoiceConfirm => 'Diesen Node verwenden';

  @override
  String get nodeChoiceSaveFailed =>
      'Deine Auswahl konnte nicht gespeichert werden. Versuche es erneut.';

  @override
  String get nodeVerifyKeyWarning =>
      'Prüfe den Schlüssel beim Betreiber. Ein gefälschter Node kann deine Orders sehen.';

  @override
  String get nodeInvalidPubkeyShort =>
      'Das ist kein gültiger öffentlicher Schlüssel.';

  @override
  String get nodeNameFieldHint => 'Lokaler Mostro';

  @override
  String get nodePubkeyCopied => 'Schlüssel kopiert';

  @override
  String get nodeNotSelectableOffline => 'Dieser Node antwortet nicht';

  @override
  String get nodeStatsLoading => 'Node-Daten werden geladen';

  @override
  String get nodeSwitchConfirmTitle => 'Node wechseln?';

  @override
  String nodeSwitchConfirmBody(String currentNode, String newNode) {
    return 'Du hast einen laufenden Trade auf $currentNode. Er bleibt dort; das Orderbuch zeigt jetzt $newNode.';
  }

  @override
  String get nodeSwitchConfirmAction => 'Node wechseln';

  @override
  String get nodeTradesCheckFailed =>
      'Deine Trades konnten nicht geprüft werden. Versuche es erneut.';

  @override
  String get notificationsScreenTitle => 'Benachrichtigungen';

  @override
  String get markAllAsReadMenuItem => 'Alle als gelesen markieren';

  @override
  String get clearAllMenuItem => 'Alle löschen';

  @override
  String get youMustBackUpYourAccount => 'Du musst dein Konto sichern';

  @override
  String get tapToViewAndSaveSecretWords =>
      'Tippe, um deine geheimen Wörter anzuzeigen und zu speichern.';

  @override
  String get noNotifications => 'Keine Benachrichtigungen';

  @override
  String get markAsRead => 'Als gelesen markieren';

  @override
  String get deleteNotificationLabel => 'Löschen';

  @override
  String get rateScreenHeader => 'BEWERTEN';

  @override
  String get successfulOrder => 'Erfolgreiche Order';

  @override
  String get closeRatingButton => 'SCHLIESSEN';

  @override
  String get aboutScreenTitle => 'Über';

  @override
  String get linkCopiedToClipboard => 'Link in die Zwischenablage kopiert';

  @override
  String get pubkeyLabel => 'Öffentlicher Schlüssel';

  @override
  String get relaysLabel => 'Relays';

  @override
  String get footerTagline => 'Open-Source. Ohne Verwahrung. Privat.';

  @override
  String get drawerTitle => 'Mostro';

  @override
  String get drawerTagline => 'P2P-Handel';

  @override
  String get drawerStageBadge => 'Beta';

  @override
  String drawerVersion(String version) {
    return 'Version $version';
  }

  @override
  String get drawerAccountMenuItem => 'Konto';

  @override
  String get drawerSettingsMenuItem => 'Einstellungen';

  @override
  String get drawerAboutMenuItem => 'Über';

  @override
  String get navOrderBook => 'Orderbuch';

  @override
  String get navMyTrades => 'Meine Trades';

  @override
  String get navChat => 'Chat';

  @override
  String get loadingOrders => 'Orders werden geladen…';

  @override
  String get errorLoadingOrders =>
      'Orders konnten nicht geladen werden. Bitte Verbindung prüfen.';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String disableRelayLabel(String url) {
    return 'Relay $url deaktivieren';
  }

  @override
  String enableRelayLabel(String url) {
    return 'Relay $url aktivieren';
  }

  @override
  String get removeRelayTooltip => 'Relay entfernen';

  @override
  String get relayAddFailed => 'Relay konnte nicht hinzugefügt werden';

  @override
  String get relayRemoveFailed => 'Relay konnte nicht entfernt werden';

  @override
  String get backupRitualSecondFailureMessage =>
      'Das war erneut falsch. Bitte überprüfe und sichere deine geheimen Wörter und verifiziere dann von vorne.';

  @override
  String get cancelTradeDialogTitle => 'Trade stornieren?';

  @override
  String get cancelTradeDialogContent =>
      'Du fragst eine kooperative Stornierung an. Die Gegenpartei muss ebenfalls zustimmen, damit der Trade vollständig storniert wird.';

  @override
  String get cancelTradeDialogContentNotStarted =>
      'Der Trade hat noch nicht begonnen und wird daher sofort storniert. Die Gegenpartei muss nicht zustimmen.';

  @override
  String get cancelTradeDialogContentMaybeStarted =>
      'Hat der Trade noch nicht begonnen, wird er sofort storniert. Hat er bereits begonnen, muss die Gegenpartei ebenfalls zustimmen.';

  @override
  String get noButtonLabel => 'Nein';

  @override
  String get yesButtonLabel => 'Ja';

  @override
  String get yesCancelButtonLabel => 'Ja, abbrechen';

  @override
  String get cancelRequestSent => 'Stornierungsanfrage gesendet';

  @override
  String get cancelRequestFailed =>
      'Stornierung fehlgeschlagen. Bitte erneut versuchen.';

  @override
  String get tradeCardCancelRequestedByMeTitle => 'Stornierung angefragt';

  @override
  String get tradeCardCancelRequestedByMeMessage =>
      'Du hast die Stornierung dieses Trades angefragt. Er bleibt offen, bis die Gegenpartei ebenfalls storniert. Antwortet sie nicht, kannst du einen Streitfall eröffnen.';

  @override
  String get tradeCardCancelRequestedByPeerTitle =>
      'Die Gegenpartei möchte stornieren';

  @override
  String get tradeCardCancelRequestedByPeerMessage =>
      'Sie hat die Stornierung dieses Trades angefragt. Nimm an, um ihn ohne Geldbewegung zu beenden, oder setze den Trade fort.';

  @override
  String get tradeCancelRequestedByMeNotice =>
      'Du hast die Stornierung dieses Trades angefragt. Er bleibt offen, bis die Gegenpartei ebenfalls storniert. Antwortet sie nicht, kannst du einen Streitfall eröffnen.';

  @override
  String get tradeCancelRequestedByPeerNotice =>
      'Die Gegenpartei hat die Stornierung dieses Trades angefragt. Nimm an, um ihn ohne Geldbewegung zu beenden, oder handle weiter.';

  @override
  String get acceptCancelButton => 'Stornierung annehmen';

  @override
  String get cancelTradeDialogContentAccept =>
      'Die Gegenpartei hat die Stornierung angefragt. Wenn du jetzt stornierst, endet der Trade für beide, ohne dass Geld bewegt wird.';

  @override
  String get fiatSentFailed =>
      'Zahlung konnte nicht bestätigt werden. Bitte erneut versuchen.';

  @override
  String get releaseFailed =>
      'Freigabe fehlgeschlagen. Bitte erneut versuchen.';

  @override
  String get releasePendingLabel => 'Freigabe läuft… warte auf den Node';

  @override
  String get releaseSentNotice =>
      'Freigabe gesendet. Der Node kann bis zu einer Minute brauchen, um sie zu bestätigen.';

  @override
  String get releaseUnconfirmedNotice =>
      'Der Node hat die Freigabe noch nicht bestätigt. Wenn sich die Order nicht aktualisiert, kannst du erneut freigeben.';

  @override
  String get cancelTradeButton => 'Trade stornieren';

  @override
  String get payHoldInvoiceButton => 'Rechnung bezahlen';

  @override
  String get openDisputeButton => 'Streitfall eröffnen';

  @override
  String get releaseSatsButton => 'Sats freigeben';

  @override
  String get confirmReleaseSatsButton => 'Bestätigen und Sats freigeben';

  @override
  String get shareOrderButton => 'Order teilen';

  @override
  String get orderPillYouAreSelling => 'DU VERKAUFST';

  @override
  String get orderPillYouAreBuying => 'DU KAUFST';

  @override
  String get myOrderSellTitle => 'Deine Verkaufsorder';

  @override
  String get myOrderBuyTitle => 'Deine Kauforder';

  @override
  String get cancelOrderFailed =>
      'Stornierung fehlgeschlagen. Bitte erneut versuchen.';

  @override
  String get closeButtonLabel => 'Schließen';

  @override
  String get copyButtonLabel => 'Kopieren';

  @override
  String get orderStatusWaitingForTaker => 'Warte auf Annahme';

  @override
  String get orderStatusInProgress => 'In Bearbeitung';

  @override
  String get orderStatusExpired => 'Abgelaufen';

  @override
  String get copyOrderIdTooltip => 'Order-ID kopieren';

  @override
  String get orderNotFoundTitle => 'Order nicht gefunden';

  @override
  String get orderNotFoundMessage => 'Diese Order ist nicht mehr verfügbar.';

  @override
  String get orderCancelledSuccess => 'Order erfolgreich storniert.';

  @override
  String get aboutDocumentationTitle => 'Dokumentation';

  @override
  String get aboutMostroNodeTitle => 'Mostro-Node';

  @override
  String get aboutVersionLabel => 'Version';

  @override
  String get aboutCommitHashLabel => 'Commit-Hash';

  @override
  String get aboutLicenseLabel => 'Lizenz';

  @override
  String get aboutLicenseName => 'AGPLv3+';

  @override
  String get aboutGithubRepoName => 'MostroP2P/app';

  @override
  String get aboutCopiedToClipboard => 'In die Zwischenablage kopiert';

  @override
  String get aboutLicenseDialogTitle => 'GNU Affero General Public License v3';

  @override
  String get aboutNodeLoadingText => 'Node-Informationen werden geladen…';

  @override
  String get aboutNodeUnavailable => 'Node-Informationen nicht verfügbar';

  @override
  String get aboutNodeRetry => 'Erneut versuchen';

  @override
  String get aboutLightningNetworkSection => 'Lightning-Netzwerk';

  @override
  String get aboutFiatCurrenciesLabel => 'Fiat-Währungen';

  @override
  String get aboutPriceSourceLabel => 'Quelle';

  @override
  String get aboutPriceSection => 'Preis';

  @override
  String get aboutPriceSourcesFootnote =>
      'Die Preisquellen sind die Anbieter hinter den Kursen, die der Node gerade veröffentlicht; ein ausgefallener oder aussortierter Anbieter fehlt.';

  @override
  String get aboutMostroVersionLabel => 'Mostro-Version';

  @override
  String get aboutMostroCommitLabel => 'Mostro-Commit';

  @override
  String get aboutHoldInvoiceExpLabel => 'Ablauf der Sperr-Rechnung';

  @override
  String get aboutHoldInvoiceCltvLabel => 'CLTV der Sperr-Rechnung';

  @override
  String get aboutInvoiceExpWindowLabel => 'Rechnungsablauffenster';

  @override
  String get aboutProofOfWorkLabel => 'Proof of Work';

  @override
  String get aboutMaxOrdersPerResponseLabel => 'Max. Orders/Antwort';

  @override
  String get aboutLndVersionLabel => 'LND-Version';

  @override
  String get aboutSupportedChainsLabel => 'Unterstützte Chains';

  @override
  String get aboutSupportedNetworksLabel => 'Unterstützte Netzwerke';

  @override
  String get aboutSatoshisSuffix => 'Satoshis';

  @override
  String get aboutBlocksSuffix => 'Blöcke';

  @override
  String get aboutFiatCurrenciesAll => 'Alle';

  @override
  String get aboutAntiAbuseBondSection => 'Anti-Missbrauchs-Einlage';

  @override
  String get aboutBondEnabledValue => 'Aktiviert';

  @override
  String get aboutBondDisabledValue => 'Deaktiviert';

  @override
  String get aboutBondUnsupportedValue => 'Nicht unterstützt';

  @override
  String get aboutBondStatusLabel => 'Status der Einlage';

  @override
  String get aboutBondAppliesToLabel => 'Gilt für';

  @override
  String get aboutBondAppliesToTakers => 'Annehmende Seite';

  @override
  String get aboutBondAppliesToMakers => 'Erstellende Seite';

  @override
  String get aboutBondAppliesToBoth => 'Beide Seiten';

  @override
  String get aboutBondAmountLabel => 'Höhe der Einlage';

  @override
  String get aboutBondBaseAmountLabel => 'Mindesteinlage';

  @override
  String get aboutBondNodeShareLabel => 'Anteil des Nodes beim Einzug';

  @override
  String get aboutBondSlashOnTimeoutLabel => 'Einzug bei Zeitüberschreitung';

  @override
  String get aboutBondClaimWindowLabel => 'Frist zum Einfordern';

  @override
  String aboutBondClaimWindowValue(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Tage',
      one: '$countString Tag',
    );
    return '$_temp0';
  }

  @override
  String get openDisputeFailed =>
      'Streitfall konnte nicht eröffnet werden. Bitte erneut versuchen.';

  @override
  String get openDisputeTitle => 'Streitfall eröffnen';

  @override
  String get openDisputeConfirmation =>
      'Möchtest du wirklich einen Streitfall eröffnen? Dies eskaliert den Trade an einen Schlichter und kann nicht rückgängig gemacht werden.';

  @override
  String get disputeAlreadyOpen =>
      'Für diesen Trade ist bereits ein Streitfall eröffnet.';

  @override
  String get tradeNotDisputable =>
      'Ein Streitfall kann erst eröffnet werden, wenn die Gelder für diesen Trade gesperrt sind.';

  @override
  String get tradeWaitingInvoiceBuyerInstruction =>
      'Sende deine Lightning-Rechnung, damit der Verkäufer die Gelder sperren kann.';

  @override
  String get tradeWaitingInvoiceSellerInstruction =>
      'Warte auf die Lightning-Rechnung des Käufers.';

  @override
  String get tradeWaitingPaymentSellerInstruction =>
      'Bezahle die Rechnung, um die Gelder zu sperren und den Trade zu starten.';

  @override
  String get tradeLoadError =>
      'Beim Laden des Trades ist ein Fehler aufgetreten.';

  @override
  String get tradeWaitingForHoldInvoice => 'Warte auf die Rechnung…';

  @override
  String get shareButtonLabel => 'Teilen';

  @override
  String get shareFailed => 'Rechnung konnte nicht geteilt werden';

  @override
  String get waitingForPaymentConfirmation => 'Warte auf Zahlungsbestätigung…';

  @override
  String get orderNoLongerActive => 'Diese Order ist nicht mehr aktiv';

  @override
  String get tradeNoLongerYours =>
      'Du bist nicht mehr an diesem Trade beteiligt';

  @override
  String get sessionTimeoutMessage =>
      'Keine Antwort erhalten; prüfe deine Verbindung und versuche es später erneut';

  @override
  String get noRelayAcceptedMessage =>
      'Kein Relay hat deine Nachricht angenommen. Prüfe deine Relays in den Einstellungen und versuche es erneut';

  @override
  String get noIdentityFoundMessage =>
      'Keine Identität gefunden — versuche, die App neu zu starten.';

  @override
  String get failedToLoadSecretWordsMessage =>
      'Geheime Wörter konnten nicht geladen werden. Bitte versuche es erneut.';

  @override
  String get privacyModesInfoTitle => 'Privatsphäre-Modi';

  @override
  String get privacyModesInfoContent =>
      'Im Reputationsmodus können andere deine erfolgreichen Trades sehen.\n\nDer vollständige Privatsphäre-Modus hält deine Aktivität völlig anonym — es wird keine Reputation aufgebaut.';

  @override
  String get failedToGenerateIdentityMessage =>
      'Identität konnte nicht generiert werden. Bitte versuche es erneut.';

  @override
  String get pendingWipeBannerTitle =>
      'Die Daten des vorherigen Nutzers sind noch auf diesem Gerät';

  @override
  String get pendingWipeBannerBody =>
      'Beim Löschen der vorherigen Identität konnten deren Trades und Chats nicht von diesem Gerät entfernt werden. Die App versucht es erneut, sobald ein neuer Nutzer erstellt oder importiert wird.';

  @override
  String get pendingWipeBlockedMessage =>
      'Die Daten des vorherigen Nutzers konnten nicht von diesem Gerät entfernt werden, daher wurde der neue Nutzer nicht eingerichtet und dein aktueller Nutzer beibehalten. Bitte versuche es erneut.';

  @override
  String get wipeNotRecordedMessage =>
      'Der aktuelle Nutzer konnte nicht sicher entfernt werden, daher wurde nichts geändert. Bitte versuche es erneut.';

  @override
  String get identitySwapStorageUnavailableMessage =>
      'Der Speicher des Geräts ist gerade nicht verfügbar, daher wurde der aktuelle Nutzer beibehalten und nichts geändert. Starte die App neu und versuche es erneut.';

  @override
  String get identitySwapPreviousNotReloadedMessage =>
      'Der neue Nutzer wurde nicht eingerichtet, und der aktuelle Nutzer konnte nicht vollständig wiederhergestellt werden. Starte die App neu, um ihn wieder zu laden.';

  @override
  String get invalidMnemonicMessage =>
      'Ungültige geheime Wörter. Bitte überprüfe deine Wörter und versuche es erneut.';

  @override
  String get enterValidMnemonicError => 'Gib deine 12 geheimen Wörter ein.';

  @override
  String get orderBookRefreshedMessage => 'Orderbuch aktualisiert';

  @override
  String get refreshFailedMessage => 'Aktualisierung fehlgeschlagen';

  @override
  String get refreshButtonLabel => 'Aktualisieren';

  @override
  String get okButtonLabel => 'OK';

  @override
  String get moreInformationTooltip => 'Weitere Informationen';

  @override
  String get backedUpBadgeLabel => 'Gesichert';

  @override
  String get backupBannerTitle => 'Sichere deine Reputation';

  @override
  String get backupBannerSubtitle =>
      'Sichere deine 12 Wörter — es dauert 60 Sekunden.';

  @override
  String get failedToSaveBackupStatusMessage =>
      'Sicherungsstatus konnte nicht gespeichert werden. Bitte versuche es erneut.';

  @override
  String get backupRitualStep1Title =>
      'Schritt 1 von 3 · Schreibe deine Wörter auf';

  @override
  String get backupRitualStep2Title => 'Schritt 2 von 3 · Überprüfen';

  @override
  String get backupRitualStep3Title => 'Schritt 3 von 3 · Fertig';

  @override
  String get backupRitualWarningTitle => 'Schreibe sie auf Papier. ';

  @override
  String get backupRitualWarningBody =>
      'Speichere sie nicht in Fotos, Screenshots oder der Cloud — wer diese 12 Wörter hat, kann deine Reputation stehlen.';

  @override
  String get wordsHiddenOnLeaveNote =>
      'Sie werden ausgeblendet, wenn du diesen Bildschirm verlässt';

  @override
  String get wroteThemDownVerifyButton =>
      'Ich habe sie aufgeschrieben — überprüfen';

  @override
  String get tapCorrectWordsTitle => 'Tippe auf die richtigen Wörter';

  @override
  String get verifyInstructionsBody =>
      'Wir fragen 3 zufällig ab. Wenn du sie richtig hast, wissen wir, dass sie sicher aufgeschrieben sind.';

  @override
  String optionsForWordLabel(int number) {
    return 'OPTIONEN FÜR WORT #$number';
  }

  @override
  String get wrongPickMessage =>
      'Nicht ganz — überprüfe dein Papier und versuche es erneut.';

  @override
  String get allWordsCorrectMessage => 'Alle 3 Wörter richtig';

  @override
  String get reviewWordsButton => 'Wörter ansehen';

  @override
  String get accountBackedUpTitle => 'Dein Konto ist gesichert';

  @override
  String get accountBackedUpBody =>
      'Deine Reputation ist sicher. Falls du dein Telefon verlierst, stelle dein Konto mit deinen 12 Wörtern wieder her.';

  @override
  String wordNumberLabel(int number) {
    return 'Wort #$number';
  }

  @override
  String get backupTriggerBody =>
      'Deine Reputation liegt in einem Schlüssel, den nur du besitzt. Wenn du dein Telefon verlierst, verlierst du diese Reputation — ';

  @override
  String get backupTriggerBodyHighlight => 'sichere ihn in 60 Sekunden.';

  @override
  String get backupStepWriteDown => 'Schreibe deine 12 Wörter auf Papier';

  @override
  String get backupStepVerifyRandom =>
      'Wir fragen 3 zufällig zur Bestätigung ab';

  @override
  String get backupStepSecured => 'Fertig — dein Konto ist gesichert';

  @override
  String get backupNowButton => 'Jetzt sichern';

  @override
  String get backupLaterButton => 'Mache ich später';

  @override
  String get nwcConnectionFailedMessage =>
      'Verbindung fehlgeschlagen. Bitte überprüfe deine NWC-URI und versuche es erneut.';

  @override
  String get clipboardInvalidNwcUriMessage =>
      'Die Zwischenablage enthält keine gültige NWC-URI.';

  @override
  String get scanQrButtonLabel => 'QR scannen';

  @override
  String get connectButtonLabel => 'Verbinden';

  @override
  String get walletDisconnectedMessage => 'Wallet getrennt';

  @override
  String get relayLabel => 'Relay';

  @override
  String get disconnectButtonLabel => 'Trennen';

  @override
  String relaysMoreSuffix(int count) {
    return '(+$count weitere)';
  }

  @override
  String get chooseNotificationEventsSubtitle =>
      'Wähle, welche Ereignisse eine Benachrichtigung in der App anzeigen.';

  @override
  String get notifTradeUpdatesTitle => 'Trade-Updates';

  @override
  String get notifTradeUpdatesSubtitle =>
      'Statusänderungen bei deinen aktiven Trades';

  @override
  String get notifNewMessagesTitle => 'Neue Nachrichten';

  @override
  String get notifNewMessagesSubtitle => 'Nachrichten von deiner Gegenpartei';

  @override
  String get notifPaymentAlertsTitle => 'Zahlungshinweise';

  @override
  String get notifPaymentAlertsSubtitle =>
      'Bestätigungen und Fehler von Lightning-Zahlungen';

  @override
  String get notifDisputeUpdatesTitle => 'Streitfall-Updates';

  @override
  String get notifDisputeUpdatesSubtitle =>
      'Schlichter-Aktionen und Streitbeilegungen';

  @override
  String get notifAnnouncementsTitle => 'Ankündigungen';

  @override
  String get notifAnnouncementsSubtitle =>
      'Versionen, Ausfälle und Relay-Änderungen, signiert vom Mostro-Projekt';

  @override
  String get announcementsGroupSubtitle =>
      'Ankündigungen werden von den Relays gelesen und nie beantwortet: Nichts über dich wird gesendet.';

  @override
  String get announcementLevelInfo => 'Ankündigung';

  @override
  String get announcementLevelWarning => 'Hinweis';

  @override
  String get announcementLevelCritical => 'Sicherheitsupdate';

  @override
  String get announcementOpenLink => 'Link öffnen';

  @override
  String get notificationsBellCritical =>
      'Benachrichtigungen, ein ungelesenes Sicherheitsupdate';

  @override
  String get searchCurrenciesHint => 'Währungen suchen…';

  @override
  String get noCurrenciesFoundMessage => 'Keine Währungen gefunden';

  @override
  String get shareLogsTooltip => 'Protokolle teilen';

  @override
  String get noLogsToShareTooltip => 'Keine Protokolle zum Teilen';

  @override
  String get noLogEntriesMessage => 'Keine Protokolleinträge';

  @override
  String get failedToShareLogsMessage =>
      'Protokolle konnten nicht geteilt werden';

  @override
  String get logReportShareHeading => 'Mostro-Protokollbericht';

  @override
  String get tradeFilterAll => 'Alle';

  @override
  String get tradeFilterPending => 'Ausstehend';

  @override
  String get tradeFilterWaitingInvoice => 'Warte auf Rechnung';

  @override
  String get tradeFilterWaitingPayment => 'Warte auf Zahlung';

  @override
  String get tradeFilterActive => 'Aktiv';

  @override
  String get tradeFilterFiatSent => 'Fiat gesendet';

  @override
  String get tradeFilterSuccess => 'Erfolgreich';

  @override
  String get tradeFilterCanceled => 'Storniert';

  @override
  String get tradeFilterDispute => 'Streitfall';

  @override
  String get menuTooltip => 'Menü';

  @override
  String get noTradesTitle => 'Keine Trades';

  @override
  String get noTradesSubtitle =>
      'Deine aktiven und abgeschlossenen Trades erscheinen hier.';

  @override
  String get couldNotLoadTradesMessage => 'Trades konnten nicht geladen werden';

  @override
  String get sellingBitcoin => 'Du verkaufst Bitcoin';

  @override
  String get buyingBitcoin => 'Du kaufst Bitcoin';

  @override
  String get tradeInstructionActiveBuyer =>
      'Sobald du das Geld gesendet hast, markiere es unten. Öffne nur einen Streitfall, wenn der Verkäufer nicht mehr antwortet.';

  @override
  String get tradeInstructionFiatSentBuyer =>
      'Zahlung als gesendet markiert. Warte darauf, dass der Verkäufer den Empfang bestätigt und deine Sats freigibt.';

  @override
  String get tradeInstructionActiveSeller =>
      'Kontaktiere den Käufer mit den Zahlungsanweisungen über den Chat oben.';

  @override
  String get tradeInstructionFiatSentSeller =>
      'Der Käufer hat bestätigt, die Zahlung gesendet zu haben. Sobald du den Empfang prüfst, gib die Sats frei.';

  @override
  String get tradeInstructionDisputed =>
      'Ein Schlichter wurde zugewiesen. Er wird dich über die App kontaktieren.';

  @override
  String get tradeInstructionPending =>
      'Deine Order ist veröffentlicht und wartet darauf, dass eine Gegenpartei sie annimmt. Du kannst sie jederzeit stornieren.';

  @override
  String get tradeInstructionCancelled =>
      'Dieser Trade wurde storniert. Es wurden keine Gelder ausgetauscht.';

  @override
  String get tradeInstructionInProgress => 'Trade läuft.';

  @override
  String get theAgreedAmount => 'den vereinbarten Betrag';

  @override
  String get tradeHeadlinePending =>
      'Warte darauf, dass jemand deine Order annimmt';

  @override
  String get tradeHeadlineInProgress => 'Der Trade wird vorbereitet';

  @override
  String get tradeHeadlineWaitingInvoiceBuyer =>
      'Teile eine Lightning-Rechnung, um deine Sats zu erhalten';

  @override
  String get tradeHeadlineWaitingInvoiceSeller =>
      'Warte darauf, dass der Käufer eine Rechnung teilt';

  @override
  String get tradeHeadlineWaitingPaymentBuyer =>
      'Warte darauf, dass der Verkäufer die Sats sperrt';

  @override
  String get tradeHeadlineWaitingPaymentSeller =>
      'Bezahle die Rechnung, um die Sats zu sperren';

  @override
  String tradeHeadlineActiveBuyer(String amount) {
    return 'Sende $amount an den Verkäufer';
  }

  @override
  String tradeHeadlineActiveSeller(String amount) {
    return 'Warte darauf, dass der Käufer $amount sendet';
  }

  @override
  String get tradeHeadlineFiatSentBuyer =>
      'Warte darauf, dass der Verkäufer deine Sats freigibt';

  @override
  String tradeHeadlineFiatSentSeller(String amount) {
    return 'Bestätige, dass du $amount erhalten hast';
  }

  @override
  String get tradeHeadlineDisputed => 'Streitfall läuft';

  @override
  String get tradeHeadlineCancelled => 'Order storniert';

  @override
  String get tradeHeadlineLoading => 'Trade wird geladen…';

  @override
  String get tradeTimerPendingConsequence =>
      'Bei Ablauf wird die Order aus dem Buch entfernt. Es wirkt sich nicht auf deine Reputation aus.';

  @override
  String get tradeTimerExpiryBackToBook =>
      'Bei Ablauf kehrt die Order ins Buch zurück.';

  @override
  String get tradeTimerExpiryCancelled =>
      'Bei Ablauf wird die Order storniert.';

  @override
  String get tradeTimerEscrowCancels =>
      'Ungefähre Zeit. Läuft sie ab, storniert Mostro den Trade.';

  @override
  String get tradeTimerEscrowDisputes =>
      'Ungefähre Zeit. Läuft sie ab, eröffnet Mostro einen Streitfall.';

  @override
  String get tradeTimerEscrowCancellingBuyer =>
      'Mostro storniert gleich den Trade und gibt die Sats an den Verkäufer zurück.';

  @override
  String get tradeTimerEscrowCancellingSeller =>
      'Mostro storniert gleich den Trade. Deine Sats bleiben in deiner Wallet.';

  @override
  String get tradeTimerEscrowDisputing =>
      'Gleich wird ein Streitfall eröffnet.';

  @override
  String get tradeStepOrderTaken => 'Order angenommen';

  @override
  String get tradeStepWaitingTaker => 'Warte auf Annahme';

  @override
  String get tradeStepInvoiceBuyer => 'Der Verkäufer sperrt die Sats';

  @override
  String get tradeStepInvoiceSeller => 'Du sperrst die Sats';

  @override
  String get tradeStepFiatBuyer => 'Du sendest die Zahlung';

  @override
  String get tradeStepFiatSeller => 'Der Käufer sendet die Zahlung';

  @override
  String get tradeStepReleaseBuyer => 'Der Verkäufer gibt deine Sats frei';

  @override
  String get tradeStepReleaseSeller => 'Du bestätigst und gibst die Sats frei';

  @override
  String get tradeStepPayoutBuyer => 'Mostro sendet dir deine Sats';

  @override
  String get tradeStepRate => 'Trade bewerten';

  @override
  String tradeCreatedAtLabel(String date) {
    return 'erstellt $date';
  }

  @override
  String stepIndicator(int current, int total) {
    return 'SCHRITT $current VON $total';
  }

  @override
  String get addLightningInvoiceButton => 'Lightning-Rechnung hinzufügen';

  @override
  String get viewDisputeButton => 'Streitfall ansehen';

  @override
  String get yourTradeTimelineTitle => 'DEIN TRADE';

  @override
  String get messageSendFailed =>
      'Nachricht konnte nicht gesendet werden. Bitte versuche es erneut.';

  @override
  String get invalidTradeId => 'Ungültige Trade-ID';

  @override
  String get selectForDetailsHint => 'Wähle ℹ oder 👤\nfür Details';

  @override
  String noMessagesYet(String handle) {
    return 'Noch keine Nachrichten.\nSag $handle hallo!';
  }

  @override
  String get exchangeInfoTooltip => 'Trade-Info';

  @override
  String get userInfoTooltip => 'Benutzer-Info';

  @override
  String chattingWith(String handle) {
    return 'Du chattest mit $handle';
  }

  @override
  String get unknownPeerHandle => 'Unbekannt';

  @override
  String get messagesTab => 'Nachrichten';

  @override
  String get disputesTab => 'Streitfälle';

  @override
  String get tradeInformationTitle => 'Trade-Informationen';

  @override
  String get orderIdLabel => 'Order-ID';

  @override
  String get fiatAmountLabel => 'Fiat-Betrag';

  @override
  String get satsAmountLabel => 'Sats-Betrag';

  @override
  String get peerReputationUnavailable =>
      'Die Reputation dieses Nutzers ist nicht verfügbar';

  @override
  String get statusLabel => 'Status';

  @override
  String get paymentMethodLabel => 'Zahlungsmethode';

  @override
  String get createdLabel => 'Erstellt';

  @override
  String get userInformationTitle => 'Benutzerinformationen';

  @override
  String get fileTypeVideo => 'Video';

  @override
  String get fileTypeImage => 'Bild';

  @override
  String get fileTypeArchive => 'Archiv';

  @override
  String get fileTypeFile => 'Datei';

  @override
  String buyingSatsAmount(String sats) {
    return 'Du kaufst $sats Sats';
  }

  @override
  String sellingSatsAmount(String sats) {
    return 'Du verkaufst $sats Sats';
  }

  @override
  String get viewOrderLink => 'Order ansehen';

  @override
  String timeLeftLabel(String time) {
    return '$time übrig';
  }

  @override
  String get invoiceNoLongerExpected =>
      'Diese Order wartet nicht mehr auf eine Rechnung. Status wird aktualisiert…';

  @override
  String get invoiceAwaitingNode =>
      'Gesendet. Der Node hat noch nicht geantwortet – du wirst zum Trade weitergeleitet, sobald er es tut.';

  @override
  String get invoiceAwaitingNodeLong =>
      'Der Node antwortet immer noch nicht. Wenn der Trade nicht weitergeht, sende sie erneut.';

  @override
  String get invoiceSubmitInFlight =>
      'Für diese Order wird bereits eine Rechnung gesendet. Warte auf die Antwort.';

  @override
  String get waitingForTradeAmount =>
      'Warte auf den Trade-Betrag — bitte versuche es gleich noch einmal.';

  @override
  String get fetchingTradeAmount => 'Trade-Betrag wird abgerufen…';

  @override
  String get enterInvoiceManually => 'Rechnung manuell eingeben';

  @override
  String get rangeAmountTakeAction => 'Order annehmen';

  @override
  String orderAmountOutOfRange(int min, int max) {
    return 'Der Betrag muss für diesen Mostro-Node zwischen $min und $max Sats liegen';
  }

  @override
  String orderCurrencyNotAccepted(String currency) {
    return 'Dieser Mostro-Node akzeptiert $currency nicht. Wähle eine andere Währung';
  }

  @override
  String orderAmountOutOfRangeFiat(int min, int max, String currency) {
    return 'Der Betrag muss für diesen Mostro-Node zwischen $min und $max $currency liegen';
  }

  @override
  String get priceTypeMarket => 'Markt';

  @override
  String get priceTypeFixed => 'Fest';

  @override
  String get priceTypeInfoTooltip => 'Info zum Preistyp';

  @override
  String get premiumSectionLabel => 'Aufschlag';

  @override
  String get fixedPriceRangeNotAvailable =>
      'Festpreis ist für Orders mit Betragsbereich nicht verfügbar. Deaktiviere den Bereich, um einen Festpreis zu verwenden.';

  @override
  String get priceTypesDialogTitle => 'Preistypen';

  @override
  String get priceTypesDialogContent =>
      'Marktpreis: Deine Order folgt dem Marktkurs, mit dem Aufschlag oder Abschlag, den du festlegst.\n\nFestpreis: Du legst den genauen Sats-Betrag fest; er folgt nicht dem Markt.';

  @override
  String get newOrderTitle => 'Neue Order';

  @override
  String get amountSectionSell => 'Wie viel du verkaufst';

  @override
  String get amountSectionBuy => 'Wie viel du kaufst';

  @override
  String get amountModeSingle => 'Einzeln';

  @override
  String get amountModeRange => 'Bereich';

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
      other: '$countString ausgewählt',
      one: '1 ausgewählt',
      zero: 'keine ausgewählt',
    );
    return '$_temp0';
  }

  @override
  String get paymentMethodAdd => 'Hinzufügen';

  @override
  String get paymentMethodSearchHint => 'Methoden suchen';

  @override
  String get customPaymentMethodLabel => 'Eigene Zahlungsmethode';

  @override
  String get priceSectionTitle => 'Preis';

  @override
  String premiumSellAbove(String premium) {
    return 'Du verkaufst $premium% über dem Marktpreis';
  }

  @override
  String premiumSellBelow(String premium) {
    return 'Du verkaufst $premium% unter dem Markt';
  }

  @override
  String premiumBuyBelow(String premium) {
    return 'Du zahlst $premium% weniger als der Markt';
  }

  @override
  String premiumBuyAbove(String premium) {
    return 'Du zahlst $premium% mehr';
  }

  @override
  String get premiumExactMarket => 'Exakter Marktpreis';

  @override
  String get fixedPriceNote =>
      'Bei Festpreis folgt die Order nicht dem Markt: der Sats-Betrag bleibt genau so, wie du ihn eingibst.';

  @override
  String get previewHintNoAmount =>
      'Gib einen Betrag ein und du siehst hier, wie die Order aussieht.';

  @override
  String previewSellMarket(String amount, String premium, String active) {
    return 'Du verkaufst BTC für $amount zum Marktpreis $premium$active';
  }

  @override
  String previewSellMarketExact(String amount, String active) {
    return 'Du verkaufst BTC für $amount zum Marktpreis$active';
  }

  @override
  String previewBuyMarket(String amount, String premium, String active) {
    return 'Du kaufst BTC für $amount zum Marktpreis $premium$active';
  }

  @override
  String previewBuyMarketExact(String amount, String active) {
    return 'Du kaufst BTC für $amount zum Marktpreis$active';
  }

  @override
  String previewSellFixed(String sats, String amount, String active) {
    return 'Du verkaufst $sats für $amount zum Festpreis$active';
  }

  @override
  String previewBuyFixed(String sats, String amount, String active) {
    return 'Du kaufst $sats für $amount zum Festpreis$active';
  }

  @override
  String previewActiveSuffix(String hours) {
    return ' · $hours aktiv';
  }

  @override
  String get publishOrder => 'Order veröffentlichen';

  @override
  String removePaymentMethod(String method) {
    return '$method entfernen';
  }

  @override
  String get satsUnitLabel => 'Sats';

  @override
  String satsAmount(String amount) {
    return '$amount Sats';
  }

  @override
  String durationHours(int hours) {
    return '$hours h';
  }

  @override
  String get paymentMethodsLabel => 'Zahlungsmethoden';

  @override
  String get customPaymentMethodHint => 'Eigene Zahlungsmethode…';

  @override
  String amountRangeError(String min, String max) {
    return 'Der Betrag muss zwischen $min und $max liegen';
  }

  @override
  String get enterAmountTitle => 'Betrag eingeben';

  @override
  String minMaxRangeLabel(String min, String max, String currency) {
    return 'Min: $min – Max: $max $currency';
  }

  @override
  String get ratingFailed =>
      'Bewertung fehlgeschlagen. Bitte versuche es erneut.';

  @override
  String get submitUppercaseButton => 'ABSENDEN';

  @override
  String selectStarTooltip(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString Sterne auswählen',
      one: '1 Stern auswählen',
    );
    return '$_temp0';
  }

  @override
  String get disputeDetailsTitle => 'Streitfall-Details';

  @override
  String get disputeIdLabel => 'Streitfall-ID';

  @override
  String disputeReasonLabel(String reason) {
    return 'Grund: $reason';
  }

  @override
  String get solverLabel => 'Schlichter';

  @override
  String get serberoLabel => 'Serbero';

  @override
  String get disputeSerberoAssigned =>
      'Serbero, ein automatischer Assistent, hilft bei deinem Streitfall. Er stellt dir hier ein paar Fragen und übergibt den Fall bei Bedarf an einen Menschen.';

  @override
  String get disputeSolverTookOver =>
      'Ein Schlichter hat deinen Streitfall übernommen.';

  @override
  String get disputeScreenTitle => 'Streitfall';

  @override
  String get filtersDialogTitle => 'Filter';

  @override
  String get resetButton => 'Zurücksetzen';

  @override
  String get currencyLabel => 'Währung';

  @override
  String get ratingLabel => 'Bewertung';

  @override
  String get applyButton => 'Anwenden';

  @override
  String get successLabel => 'Erfolg';

  @override
  String get copyButton => 'Kopieren';

  @override
  String get shareButton => 'Teilen';

  @override
  String sendSatsToAddress(String sats) {
    return 'Sende $sats Sats an:';
  }

  @override
  String get changeButton => 'Ändern';

  @override
  String get unableToOpenNotification =>
      'Benachrichtigungsdetails können nicht geöffnet werden.';

  @override
  String get reasonBestPremium => 'Bester Aufschlag';

  @override
  String get reasonMostReputable => 'Am angesehensten';

  @override
  String get marketPriceCaption => 'Marktpreis';

  @override

  String effectiveRateUsd(String rate, String currency) {
    return '~$rate $currency/USD';
  }

  @override
  String reputationTradesLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Trades',
      one: 'Trade',
    );
    return '$_temp0';
  }

  @override
  String reputationDaysLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tage',
      one: 'Tag',
    );
    return '$_temp0';
  }

  @override
