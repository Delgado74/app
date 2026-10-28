// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appName => 'Mostro';

  @override
  String get loading => 'Caricamento…';

  @override
  String get actionFailedAnnouncement => 'Azione non riuscita';

  @override
  String get cancel => 'Annulla';

  @override
  String get confirm => 'Conferma';

  @override
  String get done => 'Fine';

  @override
  String get skip => 'Salta';

  @override
  String get chatTimestampYesterday => 'Ieri';

  @override
  String get disputesEmptyState => 'Le tue dispute appariranno qui';

  @override
  String get disputeAttachFile => 'Allega file';

  @override
  String get disputeWriteMessageHint => 'Scrivi un messaggio…';

  @override
  String get disputeSend => 'Invia';

  @override
  String get orderDispute => 'Disputa ordine';

  @override
  String get disputeSolverAssigned =>
      'Un mediatore ha preso in carico la tua disputa. Ti contatterà qui a breve.';

  @override
  String get disputeChatClosed =>
      'Questa disputa è stata risolta. La chat è chiusa.';

  @override
  String get messageCopied => 'Copiato';

  @override
  String get disputeLoadError => 'Impossibile caricare le dispute. Riprova.';

  @override
  String get disputeSolverNotAssigned =>
      'Nessun mediatore ha ancora preso in carico questa disputa. Potrai scrivere quando qualcuno lo farà.';

  @override
  String get disputeNotFound => 'Disputa non trovata.';

  @override
  String get disputeNotFoundForOrder =>
      'Nessuna disputa trovata per questo ordine.';

  @override
  String get disputeResolved => 'Risolta';

  @override
  String get disputeSuccessfullyCompleted => 'Completato con successo';

  @override
  String get disputeCoopCancelMessage =>
      'L\'ordine è stato annullato cooperativamente. Nessun fondo è stato trasferito.';

  @override
  String orderLabel(String orderId) {
    return 'Ordine $orderId';
  }

  @override
  String get disputeStatusClosed => 'Chiusa';

  @override
  String disputeWith(String role, String counterparty) {
    return 'Disputa con $role: $counterparty';
  }

  @override
  String get seller => 'Venditore';

  @override
  String get buyer => 'Acquirente';

  @override
  String get disputeStatusInitiated => 'Avviata';

  @override
  String get disputeStatusInProgress => 'In corso';

  @override
  String get disputeStatusResolved => 'Risolta';

  @override
  String get disputeInProgress =>
      'Questa disputa è attualmente in corso. Un mediatore sta esaminando il tuo caso.';

  @override
  String get disputeInstruction1 =>
      'Attendi che un mediatore prenda in carico la tua disputa. Una volta arrivato, condividi qualsiasi prova rilevante per aiutare a chiarire la situazione.';

  @override
  String get disputeInstruction2 =>
      'La decisione finale sarà presa sulla base delle prove presentate.';

  @override
  String get disputeInstruction3 =>
      'Se non rispondi, il sistema presumerà che tu non voglia collaborare e potresti perdere la disputa.';

  @override
  String disputeOpenedByYouAgainstSeller(String counterparty) {
    return 'Hai aperto questa disputa contro il venditore $counterparty, leggi attentamente di seguito:';
  }

  @override
  String disputeOpenedByYouAgainstBuyer(String counterparty) {
    return 'Hai aperto questa disputa contro l\'acquirente $counterparty, leggi attentamente di seguito:';
  }

  @override
  String get disputeWaitingForAdmin => 'In attesa di un mediatore';

  @override
  String get disputeLostFundsToBuyer =>
      'Il mediatore ha risolto la disputa a favore dell\'acquirente. I sats sono stati rilasciati all\'acquirente.';

  @override
  String get disputeLostFundsToSeller =>
      'Il mediatore ha annullato l\'ordine e restituito i sats al venditore. Non hai ricevuto i sats.';

  @override
  String get walkthroughWelcomeTitle => 'Bitcoin P2P, senza KYC';

  @override
  String get walkthroughWelcomeBody1 =>
      'Mostro è un exchange peer-to-peer che ti permette di scambiare Bitcoin con qualsiasi valuta e metodo di pagamento, senza KYC e senza dover fornire i tuoi dati a nessuno.';

  @override
  String get walkthroughWelcomeBody2 =>
      'È basato su Nostr, il che lo rende resistente alla censura. Nessuno può impedirti di fare trading.';

  @override
  String get walkthroughPrivacyTitle => 'Privacy per impostazione predefinita';

  @override
  String get walkthroughPrivacyBody1 =>
      'Mostro genera una nuova identità per ogni operazione, così nessuno può collegare le tue operazioni tra loro.';

  @override
  String get walkthroughPrivacyBody2 =>
      'Puoi anche decidere quanta privacy desideri:';

  @override
  String get walkthroughReputationModeName => 'Modalità reputazione';

  @override
  String get walkthroughReputationModeBody =>
      'Gli altri vedono le tue operazioni riuscite e il tuo livello di fiducia.';

  @override
  String get walkthroughFullPrivacyModeName => 'Modalità privacy totale';

  @override
  String get walkthroughFullPrivacyModeBody =>
      'Non costruisci alcuna reputazione, ma la tua attività è completamente anonima.';

  @override
  String get walkthroughPrivacyFooter =>
      'Cambia modalità quando vuoi dalla schermata Account. Lì dovresti anche salvare le tue parole segrete: sono l\'unico modo per recuperare il tuo account.';

  @override
  String get walkthroughHeldTitle => 'Sicurezza a ogni passo';

  @override
  String get walkthroughHeldBody1 =>
      'I sats del venditore restano bloccati fino alla fine dell\'operazione. Questo protegge entrambe le parti.';

  @override
  String get walkthroughHeldBody2 =>
      'L\'app è anche pensata per essere intuitiva e facile per ogni tipo di utente.';

  @override
  String get walkthroughChatTitle => 'Chat completamente cifrata';

  @override
  String get walkthroughChatBody1 =>
      'Ogni operazione ha la propria chat privata, cifrata end-to-end. Solo tu e la tua controparte potete leggerla, a meno che uno di voi non ne condivida la chiave.';

  @override
  String get walkthroughChatBody2 =>
      'In caso di disputa, condividere quella chiave con un mediatore gli permette di leggere la chat e di aiutarti a risolverla.';

  @override
  String get walkthroughTakeTitle => 'Prendi un ordine';

  @override
  String get walkthroughTakeBody1 =>
      'Sfoglia il libro ordini, scegli un ordine adatto a te e segui l\'operazione passo dopo passo.';

  @override
  String get walkthroughTakeBody2 =>
      'Potrai controllare il profilo della tua controparte, chattare in sicurezza e completare l\'operazione con facilità.';

  @override
  String get walkthroughMakeTitle => 'Non trovi quello che cerchi?';

  @override
  String get walkthroughMakeBody1 =>
      'Puoi anche creare il tuo ordine e aspettare che qualcuno lo prenda.';

  @override
  String get walkthroughMakeBody2 =>
      'Imposta l\'importo e il tuo metodo di pagamento preferito. Mostro pensa al resto.';

  @override
  String get walkthroughNext => 'Avanti';

  @override
  String walkthroughStepCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String walkthroughStepSemantics(int current, int total) {
    return 'Passo $current di $total';
  }

  @override
  String get tabBuyBtc => 'Compra BTC';

  @override
  String get tabSellBtc => 'Vendi BTC';

  @override
  String get filterButtonLabel => 'Filtra';

  @override
  String filtersActiveCount(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString filtri attivi',
      one: '1 filtro attivo',
    );
    return '$_temp0';
  }

  @override
  String get noOrdersAvailable => 'Nessun ordine disponibile';

  @override
  String get justNow => 'proprio ora';

  @override
  String minutesAgo(int m) {
    return '${m}m fa';
  }

  @override
  String hoursAgo(int h) {
    return '${h}h fa';
  }

  @override
  String daysAgo(int d) {
    return '${d}g fa';
  }

  @override
  String get invoiceRejected =>
      'Il nodo ha rifiutato questa fattura. Controlla importo e scadenza e aggiungine una nuova.';

  @override
  String get invoiceCopied => 'Fattura copiata';

  @override
  String get submitButtonLabel => 'Invia';

  @override
  String get orderAlreadyTaken => 'L\'ordine è già stato preso';

  @override
  String get nodeProtocolUnsupported =>
      'Questo nodo Mostro usa una versione del protocollo che questa app non supporta. Scegli un altro nodo nelle Impostazioni o verifica se è disponibile un aggiornamento dell\'app';

  @override
  String get nodeCapabilitiesUnknown =>
      'Stiamo ancora verificando cosa supporta il nodo Mostro selezionato. Riprova tra un istante';

  @override
  String get tradeOnOtherNode =>
      'Questa operazione appartiene a un altro nodo Mostro. Passa a quel nodo per continuarla';

  @override
  String get mostroMaintenanceMode =>
      'Il nodo Mostro a cui sei connesso è in manutenzione. Riprova più tardi o connettiti a un altro nodo Mostro nelle Impostazioni';

  @override
  String get storageUnavailable =>
      'L\'app non può creare né prendere ordini finché il suo database locale non è disponibile. Riavvia l\'app e riprova';

  @override
  String get rangeOrderWithSats =>
      'Un ordine a intervallo non può avere un importo fisso in sats: viene prezzato al mercato quando viene preso.';

  @override
  String get orderIdCopied => 'ID ordine copiato';

  @override
  String get comingSoonMessage => 'Prossimamente';

  @override
  String get tradeStatusCompleted => 'Completato';

  @override
  String get tradeStatusCancelled => 'Annullato';

  @override
  String get tradeStatusDisputed => 'In disputa';

  @override
  String get accountScreenTitle => 'Account';

  @override
  String get secretWordsTitle => 'Parole segrete';

  @override
  String get privacyCardTitle => 'Privacy';

  @override
  String get reputationMode => 'Modalità Reputazione';

  @override
  String get reputationModeSubtitle =>
      'Le tue operazioni contano per la tua reputazione pubblica';

  @override
  String get fullPrivacyMode => 'Modalità Privacy Totale';

  @override
  String get fullPrivacyModeSubtitle =>
      'Ogni operazione usa una nuova identità, senza reputazione';

  @override
  String get generateNewUserButton => 'Genera nuovo utente';

  @override
  String get importMostroUserButton => 'Importa utente Mostro';

  @override
  String get generateNewUserDialogTitle => 'Generare nuovo utente?';

  @override
  String get generateNewUserDialogContent =>
      'Verrà creata una nuova identità. Le tue parole segrete attuali non funzioneranno più — assicurati di averle salvate prima di continuare.';

  @override
  String get continueButtonLabel => 'Continua';

  @override
  String get importMnemonicDialogTitle => 'Importa parole segrete';

  @override
  String get importMnemonicHintText => 'Inserisci le tue 12 parole segrete';

  @override
  String get importButtonLabel => 'Importa';

  @override
  String get refreshUserDialogTitle => 'Aggiornare utente?';

  @override
  String get refreshUserDialogContent =>
      'Verranno recuperate le tue operazioni e gli ordini dall\'istanza Mostro. Usalo se pensi che i tuoi dati non siano sincronizzati o manchino degli ordini.';

  @override
  String get hideButtonLabel => 'Nascondi';

  @override
  String get showWordsButton => 'Mostra parole';

  @override
  String get settingsScreenTitle => 'Impostazioni';

  @override
  String get languageSettingTitle => 'Lingua';

  @override
  String get appearanceSettingTitle => 'Aspetto';

  @override
  String get appearanceDialogTitle => 'Aspetto';

  @override
  String get allCurrencies => 'Tutte le valute';

  @override
  String get lightningAddressSettingTitle => 'Indirizzo Lightning';

  @override
  String get nwcWalletSettingTitle => 'Portafoglio NWC';

  @override
  String get relaysSettingTitle => 'Relay';

  @override
  String get pushNotificationsSettingTitle => 'Notifiche push';

  @override
  String get logReportSettingTitle => 'Registro diagnostico';

  @override
  String get mostroNodeSettingTitle => 'Nodo Mostro';

  @override
  String get themeDark => 'Scuro';

  @override
  String get themeLight => 'Chiaro';

  @override
  String get themeSystemDefault => 'Predefinito di sistema';

  @override
  String get lightningAddressDialogTitle => 'Indirizzo Lightning';

  @override
  String get lightningAddressHintText => 'utente@dominio.com';

  @override
  String get invalidLightningAddressFormat =>
      'Deve essere nel formato utente@dominio';

  @override
  String get clearButtonLabel => 'Cancella';

  @override
  String get saveButtonLabel => 'Salva';

  @override
  String get scanQrCodeTitle => 'Scansiona codice QR';

  @override
  String get selectLanguageTitle => 'Seleziona lingua';

  @override
  String get selectCurrencyDialogTitle => 'Seleziona valuta';

  @override
  String get addRelayDialogTitle => 'Aggiungi relay';

  @override
  String get addButtonLabel => 'Aggiungi';

  @override
  String get relayHintText => 'wss://relay.example.com';

  @override
  String get relayErrorMustStartWithWss => 'Deve iniziare con wss://';

  @override
  String get relayErrorUrlTooShort => 'L\'URL è troppo corto';

  @override
  String get relayErrorDuplicate => 'Relay già presente nella lista';

  @override
  String get pasteQrCodeHeading => 'Incolla contenuto del codice QR';

  @override
  String get pasteButtonLabel => 'Incolla';

  @override
  String get clipboardEmptyError => 'Gli appunti sono vuoti';

  @override
  String get enterValueError => 'Inserisci un valore';

  @override
  String get trustedBadgeLabel => 'Affidabile';

  @override
  String get confirmButtonLabel => 'Conferma';

  @override
  String get selectMostroNode => 'Scegli un nodo';

  @override
  String get addCustomNode => 'Aggiungi il tuo nodo';

  @override
  String get nodePubkeyFieldLabel => 'Chiave pubblica';

  @override
  String get nodePubkeyFieldHint => 'Hex di 64 caratteri o npub…';

  @override
  String get nodeNameOptionalLabel => 'Nome (facoltativo)';

  @override
  String get invalidPubkeyFormat =>
      'Inserisci una chiave pubblica valida (hex di 64 caratteri o npub)';

  @override
  String get privateKeyNotAllowed =>
      'Questa è una chiave privata — non condividerla mai. Inserisci la chiave pubblica del nodo';

  @override
  String get nodeAlreadyExists => 'Questo nodo è già nella lista';

  @override
  String get nodeAddedSuccess => 'Nodo aggiunto';

  @override
  String nodeSwitchedSuccess(String nodeName) {
    return 'Ora stai usando $nodeName';
  }

  @override
  String get errorSwitchingNode => 'Cambio di nodo non riuscito';

  @override
  String get cannotRemoveActiveNode =>
      'Il nodo attivo non può essere rimosso — passa prima a un altro nodo';

  @override
  String get deleteCustomNodeTitle => 'Rimuovi nodo';

  @override
  String get deleteCustomNodeMessage =>
      'Rimuovere questo nodo personalizzato dalla tua lista?';

  @override
  String get deleteCustomNodeConfirm => 'Rimuovi';

  @override
  String get nodeRemovedSuccess => 'Nodo rimosso';

  @override
  String get nodeStorageUnavailable =>
      'Il database locale non è pronto. Riavvia l\'app e riprova';

  @override
  String nodeSelectorSubtitle(String code) {
    return 'Ordini e valute in $code, la tua valuta';
  }

  @override
  String get nodeSelectorSubtitleNoCurrency => 'Ordini aperti su ogni nodo';

  @override
  String nodeMissingCurrencyChip(String code) {
    return 'SENZA $code';
  }

  @override
  String get nodeOrdersNowLabel => 'ordini ora';

  @override
  String get nodeNoOrdersLabel => 'nessun ordine';

  @override
  String nodeOrdersInCurrency(int count, String code) {
    return '· $count in $code';
  }

  @override
  String get nodeFeeLabel => 'commissione';

  @override
  String get nodeFeeTooltip => 'Mostro divide la commissione tra le due parti.';

  @override
  String get nodePerTradeLabel => 'per operazione';

  @override
  String get nodeCustodyLightning => 'Custodia Lightning';

  @override
  String nodeCustodyCashu(String mint) {
    return 'Custodia Cashu · $mint';
  }

  @override
  String get nodeCustodyUnknown => 'Custodia —';

  @override
  String nodeBondPct(String pct) {
    return 'Deposito $pct%';
  }

  @override
  String get nodeBondNone => 'Senza deposito';

  @override
  String nodeStatusOnline(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString ordini',
      one: '1 ordine',
    );
    return 'Online · $_temp0';
  }

  @override
  String get nodeStatusNoUsefulOrders => 'Nessun ordine nelle tue valute';

  @override
  String nodeStatusUnreachable(String ago) {
    return 'Non risponde · ultimo segnale $ago';
  }

  @override
  String get nodeStatusUnreachableNoSignal => 'Non risponde';

  @override
  String get nodeChoiceSubtitle =>
      'Seleziona il nodo Mostro su cui vuoi operare';

  @override
  String get nodeOperatorDisclaimer =>
      'Il team di sviluppo di Mostro non è responsabile di come gli operatori dei nodi utilizzano la piattaforma. Ogni operatore controlla il proprio nodo Mostro ed è l\'unico responsabile delle proprie azioni. Utilizzando Mostro, accetti la piena responsabilità per le tue operazioni e riconosci che il team di sviluppo non ha alcun controllo sui singoli operatori dei nodi.';

  @override
  String get nodeChoiceConfirm => 'Usa questo nodo';

  @override
  String get nodeChoiceSaveFailed =>
      'Impossibile salvare la tua scelta. Riprova.';

  @override
  String get nodeVerifyKeyWarning =>
      'Verifica la chiave con l\'operatore. Un nodo falso può vedere i tuoi ordini.';

  @override
  String get nodeInvalidPubkeyShort =>
      'Questa non è una chiave pubblica valida.';

  @override
  String get nodeNameFieldHint => 'Mostro locale';

  @override
  String get nodePubkeyCopied => 'Chiave copiata';

  @override
  String get nodeNotSelectableOffline => 'Questo nodo non risponde';

  @override
  String get nodeStatsLoading => 'Caricamento dati del nodo';

  @override
  String get nodeSwitchConfirmTitle => 'Cambiare nodo?';

  @override
  String nodeSwitchConfirmBody(String currentNode, String newNode) {
    return 'Hai un\'operazione in corso su $currentNode. Resta lì; il libro ordini mostrerà ora $newNode.';
  }

  @override
  String get nodeSwitchConfirmAction => 'Cambia nodo';

  @override
  String get nodeTradesCheckFailed =>
      'Impossibile verificare le tue operazioni. Riprova.';

  @override
  String get notificationsScreenTitle => 'Notifiche';

  @override
  String get markAllAsReadMenuItem => 'Segna tutto come letto';

  @override
  String get clearAllMenuItem => 'Cancella tutto';

  @override
  String get youMustBackUpYourAccount =>
      'Devi eseguire il backup del tuo account';

  @override
  String get tapToViewAndSaveSecretWords =>
      'Tocca per visualizzare e salvare le tue parole segrete.';

  @override
  String get noNotifications => 'Nessuna notifica';

  @override
  String get markAsRead => 'Segna come letto';

  @override
  String get deleteNotificationLabel => 'Elimina';

  @override
  String get rateScreenHeader => 'VALUTA';

  @override
  String get successfulOrder => 'Ordine riuscito';

  @override
  String get closeRatingButton => 'CHIUDI';

  @override
  String get aboutScreenTitle => 'Informazioni';

  @override
  String get linkCopiedToClipboard => 'Link copiato negli appunti';

  @override
  String get pubkeyLabel => 'Chiave pubblica';

  @override
  String get relaysLabel => 'Relay';

  @override
  String get footerTagline => 'Open-source. Non custodiale. Privato.';

  @override
  String get drawerTitle => 'Mostro';

  @override
  String get drawerTagline => 'Scambio P2P';

  @override
  String get drawerStageBadge => 'Beta';

  @override
  String drawerVersion(String version) {
    return 'Versione $version';
  }

  @override
  String get drawerAccountMenuItem => 'Account';

  @override
  String get drawerSettingsMenuItem => 'Impostazioni';

  @override
  String get drawerAboutMenuItem => 'Informazioni';

  @override
  String get navOrderBook => 'Libro ordini';

  @override
  String get navMyTrades => 'Le mie operazioni';

  @override
  String get navChat => 'Chat';

  @override
  String get loadingOrders => 'Caricamento ordini…';

  @override
  String get errorLoadingOrders =>
      'Impossibile caricare gli ordini. Controlla la connessione.';

  @override
  String get retry => 'Riprova';

  @override
  String disableRelayLabel(String url) {
    return 'Disabilita relay $url';
  }

  @override
  String enableRelayLabel(String url) {
    return 'Abilita relay $url';
  }

  @override
  String get removeRelayTooltip => 'Rimuovi relay';

  @override
  String get relayAddFailed => 'Impossibile aggiungere il relay';

  @override
  String get relayRemoveFailed => 'Impossibile rimuovere il relay';

  @override
  String get backupRitualSecondFailureMessage =>
      'Di nuovo errato. Per favore controlla e salva le tue parole segrete, poi verifica dall\'inizio.';

  @override
  String get cancelTradeDialogTitle => 'Annullare l\'operazione?';

  @override
  String get cancelTradeDialogContent =>
      'Stai richiedendo un annullamento cooperativo. Anche la controparte deve accettare affinché l\'operazione venga annullata del tutto.';

  @override
  String get cancelTradeDialogContentNotStarted =>
      'L\'operazione non è ancora iniziata, quindi viene annullata subito. Non serve che la controparte accetti.';

  @override
  String get cancelTradeDialogContentMaybeStarted =>
      'Se l\'operazione non è ancora iniziata, viene annullata subito. Se è già iniziata, anche la controparte deve accettare.';

  @override
  String get noButtonLabel => 'No';

  @override
  String get yesButtonLabel => 'Sì';

  @override
  String get yesCancelButtonLabel => 'Sì, annulla';

  @override
  String get cancelRequestSent => 'Richiesta di annullamento inviata';

  @override
  String get cancelRequestFailed => 'Annullamento non riuscito. Riprova.';

  @override
  String get tradeCardCancelRequestedByMeTitle => 'Annullamento richiesto';

  @override
  String get tradeCardCancelRequestedByMeMessage =>
      'Hai chiesto di annullare questa operazione. Resta aperta finché anche la controparte non annulla. Se non risponde, puoi aprire una disputa.';

  @override
  String get tradeCardCancelRequestedByPeerTitle =>
      'La controparte vuole annullare';

  @override
  String get tradeCardCancelRequestedByPeerMessage =>
      'Ha chiesto di annullare questa operazione. Accetta per concluderla senza spostare fondi, oppure continua l\'operazione.';

  @override
  String get tradeCancelRequestedByMeNotice =>
      'Hai chiesto di annullare questa operazione. Resta aperta finché anche la controparte non annulla. Se non risponde, puoi aprire una disputa.';

  @override
  String get tradeCancelRequestedByPeerNotice =>
      'La controparte ha chiesto di annullare questa operazione. Accetta per concluderla senza spostare fondi, oppure continua l\'operazione.';

  @override
  String get acceptCancelButton => 'Accetta annullamento';

  @override
  String get cancelTradeDialogContentAccept =>
      'La controparte ha chiesto di annullare. Se annulli ora, l\'operazione termina per entrambi e nessun fondo viene spostato.';

  @override
  String get fiatSentFailed =>
      'Impossibile contrassegnare il pagamento come inviato. Riprova.';

  @override
  String get releaseFailed => 'Rilascio non riuscito. Riprova.';

  @override
  String get releasePendingLabel => 'Rilascio in corso… in attesa del nodo';

  @override
  String get releaseSentNotice =>
      'Rilascio inviato. Il nodo può impiegare fino a un minuto per confermarlo.';

  @override
  String get releaseUnconfirmedNotice =>
      'Il nodo non ha ancora confermato il rilascio. Se l\'ordine non si aggiorna, puoi rilasciare di nuovo.';

  @override
  String get cancelTradeButton => 'Annulla operazione';

  @override
  String get payHoldInvoiceButton => 'Paga la fattura';

  @override
  String get openDisputeButton => 'Apri disputa';

  @override
  String get releaseSatsButton => 'Rilascia sats';

  @override
  String get confirmReleaseSatsButton => 'Conferma e rilascia sats';

  @override
  String get shareOrderButton => 'Condividi ordine';

  @override
  String get orderPillYouAreSelling => 'STAI VENDENDO';

  @override
  String get orderPillYouAreBuying => 'STAI COMPRANDO';

  @override
  String get myOrderSellTitle => 'Il tuo ordine di vendita';

  @override
  String get myOrderBuyTitle => 'Il tuo ordine di acquisto';

  @override
  String get cancelOrderFailed => 'Impossibile annullare l\'ordine. Riprova.';

  @override
  String get closeButtonLabel => 'Chiudi';

  @override
  String get copyButtonLabel => 'Copia';

  @override
  String get orderStatusWaitingForTaker => 'In attesa di una controparte';

  @override
  String get orderStatusInProgress => 'In corso';

  @override
  String get orderStatusExpired => 'Scaduto';

  @override
  String get copyOrderIdTooltip => 'Copia ID ordine';

  @override
  String get orderNotFoundTitle => 'Ordine non trovato';

  @override
  String get orderNotFoundMessage => 'Questo ordine non è più disponibile.';

  @override
  String get orderCancelledSuccess => 'Ordine annullato con successo.';

  @override
  String get aboutDocumentationTitle => 'Documentazione';

  @override
  String get aboutMostroNodeTitle => 'Nodo Mostro';

  @override
  String get aboutVersionLabel => 'Versione';

  @override
  String get aboutCommitHashLabel => 'Hash del commit';

  @override
  String get aboutLicenseLabel => 'Licenza';

  @override
  String get aboutLicenseName => 'AGPLv3+';

  @override
  String get aboutGithubRepoName => 'MostroP2P/app';

  @override
  String get aboutCopiedToClipboard => 'Copiato negli appunti';

  @override
  String get aboutLicenseDialogTitle =>
      'Licenza Pubblica Generica Affero GNU v3';

  @override
  String get aboutNodeLoadingText => 'Caricamento informazioni del nodo…';

  @override
  String get aboutNodeUnavailable => 'Informazioni del nodo non disponibili';

  @override
  String get aboutNodeRetry => 'Riprova';

  @override
  String get aboutLightningNetworkSection => 'Rete Lightning';

  @override
  String get aboutFiatCurrenciesLabel => 'Valute fiat';

  @override
  String get aboutPriceSourceLabel => 'Fonte';

  @override
  String get aboutPriceSection => 'Prezzo';

  @override
  String get aboutPriceSourcesFootnote =>
      'Le fonti di prezzo sono i fornitori dei tassi che il nodo pubblica ora; uno che ha fallito o è stato scartato non compare.';

  @override
  String get aboutMostroVersionLabel => 'Versione Mostro';

  @override
  String get aboutMostroCommitLabel => 'Commit Mostro';

  @override
  String get aboutHoldInvoiceExpLabel => 'Scadenza fattura di trattenuta';

  @override
  String get aboutHoldInvoiceCltvLabel => 'CLTV fattura di trattenuta';

  @override
  String get aboutInvoiceExpWindowLabel => 'Finestra di scadenza fattura';

  @override
  String get aboutProofOfWorkLabel => 'Proof of Work';

  @override
  String get aboutMaxOrdersPerResponseLabel => 'Max ordini/risposta';

  @override
  String get aboutLndVersionLabel => 'Versione LND';

  @override
  String get aboutSupportedChainsLabel => 'Chain supportate';

  @override
  String get aboutSupportedNetworksLabel => 'Reti supportate';

  @override
  String get aboutSatoshisSuffix => 'Satoshi';

  @override
  String get aboutBlocksSuffix => 'blocchi';

  @override
  String get aboutFiatCurrenciesAll => 'Tutte';

  @override
  String get aboutAntiAbuseBondSection => 'Deposito anti-abuso';

  @override
  String get aboutBondEnabledValue => 'Attivo';

  @override
  String get aboutBondDisabledValue => 'Disattivato';

  @override
  String get aboutBondUnsupportedValue => 'Non supportato';

  @override
  String get aboutBondStatusLabel => 'Stato del deposito';

  @override
  String get aboutBondAppliesToLabel => 'Si applica a';

  @override
  String get aboutBondAppliesToTakers => 'Chi prende l\'ordine';

  @override
  String get aboutBondAppliesToMakers => 'Chi crea l\'ordine';

  @override
  String get aboutBondAppliesToBoth => 'Entrambe le parti';

  @override
  String get aboutBondAmountLabel => 'Importo del deposito';

  @override
  String get aboutBondBaseAmountLabel => 'Deposito minimo';

  @override
  String get aboutBondNodeShareLabel =>
      'Quota del nodo in caso di incameramento';

  @override
  String get aboutBondSlashOnTimeoutLabel =>
      'Incameramento per scadenza dell\'attesa';

  @override
  String get aboutBondClaimWindowLabel => 'Termine per richiedere il pagamento';

  @override
  String aboutBondClaimWindowValue(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString giorni',
      one: '$countString giorno',
    );
    return '$_temp0';
  }

  @override
  String get openDisputeFailed => 'Impossibile aprire la disputa. Riprova.';

  @override
  String get openDisputeTitle => 'Apri disputa';

  @override
  String get openDisputeConfirmation =>
      'Sei sicuro di voler aprire una disputa? L\'operazione passa a un mediatore e la scelta non può essere annullata.';

  @override
  String get disputeAlreadyOpen =>
      'Esiste già una disputa aperta per questa operazione.';

  @override
  String get tradeNotDisputable =>
      'Una disputa può essere aperta solo quando i fondi di questa operazione sono bloccati.';

  @override
  String get tradeWaitingInvoiceBuyerInstruction =>
      'Invia la tua fattura Lightning per permettere al venditore di bloccare i fondi.';

  @override
  String get tradeWaitingInvoiceSellerInstruction =>
      'In attesa che l\'acquirente invii la propria fattura Lightning.';

  @override
  String get tradeWaitingPaymentSellerInstruction =>
      'Paga la fattura per bloccare i fondi e avviare l\'operazione.';

  @override
  String get tradeLoadError =>
      'Si è verificato un errore durante il caricamento dell\'operazione.';

  @override
  String get tradeWaitingForHoldInvoice => 'In attesa della fattura…';

  @override
  String get shareButtonLabel => 'Condividi';

  @override
  String get shareFailed => 'Impossibile condividere la fattura';

  @override
  String get waitingForPaymentConfirmation =>
      'In attesa di conferma del pagamento…';

  @override
  String get orderNoLongerActive => 'Questo ordine non è più attivo';

  @override
  String get tradeNoLongerYours => 'Non partecipi più a questa operazione';

  @override
  String get sessionTimeoutMessage =>
      'Nessuna risposta ricevuta, verifica la tua connessione e riprova più tardi';

  @override
  String get noRelayAcceptedMessage =>
      'Nessun relay ha accettato il tuo messaggio. Controlla i tuoi relay nelle Impostazioni e riprova';

  @override
  String get noIdentityFoundMessage =>
      'Nessuna identità trovata — prova a riavviare l\'app.';

  @override
  String get failedToLoadSecretWordsMessage =>
      'Impossibile caricare le parole segrete. Riprova.';

  @override
  String get privacyModesInfoTitle => 'Modalità di privacy';

  @override
  String get privacyModesInfoContent =>
      'La modalità reputazione consente ad altri di vedere le tue operazioni riuscite.\n\nLa modalità privacy totale mantiene la tua attività completamente anonima — non viene costruita alcuna reputazione.';

  @override
  String get failedToGenerateIdentityMessage =>
      'Impossibile generare l\'identità. Riprova.';

  @override
  String get pendingWipeBannerTitle =>
      'I dati dell\'utente precedente sono ancora su questo dispositivo';

  @override
  String get pendingWipeBannerBody =>
      'L\'eliminazione dell\'identità precedente non ha potuto rimuovere le sue operazioni e le sue chat da questo dispositivo. L\'app riproverà alla prossima creazione o importazione di un nuovo utente.';

  @override
  String get pendingWipeBlockedMessage =>
      'Non è stato possibile rimuovere da questo dispositivo i dati dell\'utente precedente, quindi il nuovo utente non è stato configurato e il tuo utente attuale è stato mantenuto. Riprova.';

  @override
  String get wipeNotRecordedMessage =>
      'Non è stato possibile rimuovere in sicurezza l\'utente attuale, quindi non è stato modificato nulla. Riprova.';

  @override
  String get identitySwapStorageUnavailableMessage =>
      'La memoria del dispositivo non è disponibile in questo momento, quindi l\'utente attuale è stato mantenuto e non è stato modificato nulla. Riavvia l\'app e riprova.';

  @override
  String get identitySwapPreviousNotReloadedMessage =>
      'Il nuovo utente non è stato configurato e l\'utente attuale non è stato ripristinato del tutto. Riavvia l\'app per ricaricarlo.';

  @override
  String get invalidMnemonicMessage =>
      'Parole segrete non valide. Controlla le tue parole e riprova.';

  @override
  String get enterValidMnemonicError => 'Inserisci le tue 12 parole segrete.';

  @override
  String get orderBookRefreshedMessage => 'Libro ordini aggiornato';

  @override
  String get refreshFailedMessage => 'Aggiornamento non riuscito';

  @override
  String get refreshButtonLabel => 'Aggiorna';

  @override
  String get okButtonLabel => 'OK';

  @override
  String get moreInformationTooltip => 'Maggiori informazioni';

  @override
  String get backedUpBadgeLabel => 'Salvate';

  @override
  String get backupBannerTitle => 'Proteggi la tua reputazione';

  @override
  String get backupBannerSubtitle =>
      'Salva le tue 12 parole — bastano 60 secondi.';

  @override
  String get failedToSaveBackupStatusMessage =>
      'Impossibile salvare lo stato del backup. Riprova.';

  @override
  String get backupRitualStep1Title => 'Passo 1 di 3 · Annota le tue parole';

  @override
  String get backupRitualStep2Title => 'Passo 2 di 3 · Verifica';

  @override
  String get backupRitualStep3Title => 'Passo 3 di 3 · Fatto';

  @override
  String get backupRitualWarningTitle => 'Annotale su carta. ';

  @override
  String get backupRitualWarningBody =>
      'Non salvarle in foto, screenshot o nel cloud — chiunque abbia queste 12 parole può rubare la tua reputazione.';

  @override
  String get wordsHiddenOnLeaveNote =>
      'Verranno nascoste quando lasci questa schermata';

  @override
  String get wroteThemDownVerifyButton => 'Le ho annotate — verifica';

  @override
  String get tapCorrectWordsTitle => 'Tocca le parole corrette';

  @override
  String get verifyInstructionsBody =>
      'Ne chiediamo 3 a caso. Se le indovini, sappiamo che sono annotate al sicuro.';

  @override
  String optionsForWordLabel(int number) {
    return 'OPZIONI PER LA PAROLA #$number';
  }

  @override
  String get wrongPickMessage =>
      'Non proprio — controlla il tuo foglio e riprova.';

  @override
  String get allWordsCorrectMessage => 'Tutte e 3 le parole corrette';

  @override
  String get reviewWordsButton => 'Vedi parole';

  @override
  String get accountBackedUpTitle => 'Il tuo account è salvato';

  @override
  String get accountBackedUpBody =>
      'La tua reputazione è al sicuro. Se dovessi perdere il telefono, ripristina il tuo account con le tue 12 parole.';

  @override
  String wordNumberLabel(int number) {
    return 'Parola #$number';
  }

  @override
  String get backupTriggerBody =>
      'La tua reputazione risiede in una chiave che possiedi solo tu. Se perdi il telefono, perdi quella reputazione — ';

  @override
  String get backupTriggerBodyHighlight => 'salvala in 60 secondi.';

  @override
  String get backupStepWriteDown => 'Annota le tue 12 parole su carta';

  @override
  String get backupStepVerifyRandom => 'Ne chiediamo 3 a caso per confermare';

  @override
  String get backupStepSecured => 'Fatto — il tuo account è protetto';

  @override
  String get backupNowButton => 'Salva ora';

  @override
  String get backupLaterButton => 'Lo farò dopo';

  @override
  String get nwcConnectionFailedMessage =>
      'Connessione non riuscita. Controlla il tuo URI NWC e riprova.';

  @override
  String get clipboardInvalidNwcUriMessage =>
      'Gli appunti non contengono un URI NWC valido.';

  @override
  String get scanQrButtonLabel => 'Scansiona QR';

  @override
  String get connectButtonLabel => 'Connetti';

  @override
  String get walletDisconnectedMessage => 'Wallet disconnesso';

  @override
  String get relayLabel => 'Relay';

  @override
  String get disconnectButtonLabel => 'Disconnetti';

  @override
  String relaysMoreSuffix(int count) {
    return '(+$count altri)';
  }

  @override
  String get chooseNotificationEventsSubtitle =>
      'Scegli quali eventi mostrano una notifica nell\'app.';

  @override
  String get notifTradeUpdatesTitle => 'Aggiornamenti operazioni';

  @override
  String get notifTradeUpdatesSubtitle =>
      'Cambiamenti di stato nelle tue operazioni attive';

  @override
  String get notifNewMessagesTitle => 'Nuovi messaggi';

  @override
  String get notifNewMessagesSubtitle => 'Messaggi dalla tua controparte';

  @override
  String get notifPaymentAlertsTitle => 'Avvisi di pagamento';

  @override
  String get notifPaymentAlertsSubtitle =>
      'Conferme ed errori dei pagamenti Lightning';

  @override
  String get notifDisputeUpdatesTitle => 'Aggiornamenti dispute';

  @override
  String get notifDisputeUpdatesSubtitle =>
      'Azioni dei mediatori e risoluzioni delle dispute';

  @override
  String get notifAnnouncementsTitle => 'Annunci';

  @override
  String get notifAnnouncementsSubtitle =>
      'Versioni, interruzioni e cambi di relay, firmati dal progetto Mostro';

  @override
  String get announcementsGroupSubtitle =>
      'Gli annunci vengono letti dai relay e mai risposti: non viene inviato nulla su di te.';

  @override
  String get announcementLevelInfo => 'Annuncio';

  @override
  String get announcementLevelWarning => 'Avviso';

  @override
  String get announcementLevelCritical => 'Aggiornamento di sicurezza';

  @override
  String get announcementOpenLink => 'Apri il link';

  @override
  String get notificationsBellCritical =>
      'Notifiche, un aggiornamento di sicurezza non letto';

  @override
  String get searchCurrenciesHint => 'Cerca valute…';

  @override
  String get noCurrenciesFoundMessage => 'Nessuna valuta trovata';

  @override
  String get shareLogsTooltip => 'Condividi i log';

  @override
  String get noLogsToShareTooltip => 'Nessun log da condividere';

  @override
  String get noLogEntriesMessage => 'Nessuna voce di registro';

  @override
  String get failedToShareLogsMessage => 'Impossibile condividere i log';

  @override
  String get logReportShareHeading => 'Registro diagnostico di Mostro';

  @override
  String get tradeFilterAll => 'Tutti';

  @override
  String get tradeFilterPending => 'In attesa';

  @override
  String get tradeFilterWaitingInvoice => 'In attesa di fattura';

  @override
  String get tradeFilterWaitingPayment => 'In attesa di pagamento';

  @override
  String get tradeFilterActive => 'Attivo';

  @override
  String get tradeFilterFiatSent => 'Fiat inviato';

  @override
  String get tradeFilterSuccess => 'Riuscito';

  @override
  String get tradeFilterCanceled => 'Annullato';

  @override
  String get tradeFilterDispute => 'Disputa';

  @override
  String get menuTooltip => 'Menu';

  @override
  String get noTradesTitle => 'Nessuna operazione';

  @override
  String get noTradesSubtitle =>
      'Le tue operazioni attive e completate appariranno qui.';

  @override
  String get couldNotLoadTradesMessage => 'Impossibile caricare le operazioni';

  @override
  String get sellingBitcoin => 'Vendita di Bitcoin';

  @override
  String get buyingBitcoin => 'Acquisto di Bitcoin';

  @override
  String get tradeInstructionActiveBuyer =>
      'Una volta inviato il denaro, contrassegnalo qui sotto. Apri una disputa solo se il venditore smette di rispondere.';

  @override
  String get tradeInstructionFiatSentBuyer =>
      'Pagamento contrassegnato come inviato. In attesa che il venditore confermi la ricezione e rilasci i tuoi sats.';

  @override
  String get tradeInstructionActiveSeller =>
      'Contatta l\'acquirente con le istruzioni di pagamento tramite la chat sopra.';

  @override
  String get tradeInstructionFiatSentSeller =>
      'L\'acquirente ha confermato di aver inviato il pagamento. Una volta verificata la ricezione, rilascia i sats.';

  @override
  String get tradeInstructionDisputed =>
      'È stato assegnato un mediatore. Ti contatterà tramite l\'app.';

  @override
  String get tradeInstructionPending =>
      'Il tuo ordine è pubblicato e in attesa che una controparte lo prenda. Puoi annullarlo in qualsiasi momento.';

  @override
  String get tradeInstructionCancelled =>
      'Questa operazione è stata annullata. Non sono stati scambiati fondi.';

  @override
  String get tradeInstructionInProgress => 'Operazione in corso.';

  @override
  String get theAgreedAmount => 'l\'importo concordato';

  @override
  String get tradeHeadlinePending =>
      'In attesa che qualcuno prenda il tuo ordine';

  @override
  String get tradeHeadlineInProgress => 'L\'operazione è in preparazione';

  @override
  String get tradeHeadlineWaitingInvoiceBuyer =>
      'Condividi una fattura Lightning per ricevere i tuoi sats';

  @override
  String get tradeHeadlineWaitingInvoiceSeller =>
      'In attesa che l\'acquirente condivida una fattura';

  @override
  String get tradeHeadlineWaitingPaymentBuyer =>
      'In attesa che il venditore blocchi i sats';

  @override
  String get tradeHeadlineWaitingPaymentSeller =>
      'Paga la fattura per bloccare i sats';

  @override
  String tradeHeadlineActiveBuyer(String amount) {
    return 'Invia $amount al venditore';
  }

  @override
  String tradeHeadlineActiveSeller(String amount) {
    return 'In attesa che l\'acquirente invii $amount';
  }

  @override
  String get tradeHeadlineFiatSentBuyer =>
      'In attesa che il venditore rilasci i tuoi sats';

  @override
  String tradeHeadlineFiatSentSeller(String amount) {
    return 'Conferma di aver ricevuto $amount';
  }

  @override
  String get tradeHeadlineDisputed => 'Disputa in corso';

  @override
  String get tradeHeadlineCancelled => 'Ordine annullato';

  @override
  String get tradeHeadlineLoading => 'Caricamento operazione…';

  @override
  String get tradeTimerPendingConsequence =>
      'Se scade, l\'ordine viene rimosso dal libro ordini. Non influirà sulla tua reputazione.';

  @override
  String get tradeTimerExpiryBackToBook =>
      'Se scade, l\'ordine torna nel libro ordini.';

  @override
  String get tradeTimerExpiryCancelled =>
      'Se scade, l\'ordine viene annullato.';

  @override
  String get tradeTimerEscrowCancels =>
      'Tempo approssimativo. Se si esaurisce, Mostro annulla l\'operazione.';

  @override
  String get tradeTimerEscrowDisputes =>
      'Tempo approssimativo. Se si esaurisce, Mostro apre una disputa.';

  @override
  String get tradeTimerEscrowCancellingBuyer =>
      'Mostro sta per annullare l\'operazione e restituire i sats al venditore.';

  @override
  String get tradeTimerEscrowCancellingSeller =>
      'Mostro sta per annullare l\'operazione. I tuoi sats restano nel tuo wallet.';

  @override
  String get tradeTimerEscrowDisputing => 'Sta per essere aperta una disputa.';

  @override
  String get tradeStepOrderTaken => 'Ordine preso';

  @override
  String get tradeStepWaitingTaker => 'In attesa di una controparte';

  @override
  String get tradeStepInvoiceBuyer => 'Il venditore blocca i sats';

  @override
  String get tradeStepInvoiceSeller => 'Blocchi i sats';

  @override
  String get tradeStepFiatBuyer => 'Invii il pagamento';

  @override
  String get tradeStepFiatSeller => 'L\'acquirente invia il pagamento';

  @override
  String get tradeStepReleaseBuyer => 'Il venditore rilascia i tuoi sats';

  @override
  String get tradeStepReleaseSeller => 'Confermi e rilasci i sats';

  @override
  String get tradeStepPayoutBuyer => 'Mostro ti invia i tuoi sats';

  @override
  String get tradeStepRate => 'Valuta l\'operazione';

  @override
  String tradeCreatedAtLabel(String date) {
    return 'creata $date';
  }

  @override
  String stepIndicator(int current, int total) {
    return 'PASSO $current DI $total';
  }

  @override
  String get addLightningInvoiceButton => 'Aggiungi fattura Lightning';

  @override
  String get viewDisputeButton => 'Vedi disputa';

  @override
  String get yourTradeTimelineTitle => 'LA TUA OPERAZIONE';

  @override
  String get messageSendFailed => 'Impossibile inviare il messaggio. Riprova.';

  @override
  String get invalidTradeId => 'ID operazione non valido';

  @override
  String get selectForDetailsHint => 'Seleziona ℹ o 👤\nper i dettagli';

  @override
  String noMessagesYet(String handle) {
    return 'Ancora nessun messaggio.\nSaluta $handle!';
  }

  @override
  String get exchangeInfoTooltip => 'Info sull\'operazione';

  @override
  String get userInfoTooltip => 'Info utente';

  @override
  String chattingWith(String handle) {
    return 'Stai chattando con $handle';
  }

  @override
  String get unknownPeerHandle => 'Sconosciuto';

  @override
  String get messagesTab => 'Messaggi';

  @override
  String get disputesTab => 'Dispute';

  @override
  String get tradeInformationTitle => 'Informazioni operazione';

  @override
  String get orderIdLabel => 'ID ordine';

  @override
  String get fiatAmountLabel => 'Importo fiat';

  @override
  String get satsAmountLabel => 'Importo in sats';

  @override
  String get peerReputationUnavailable =>
      'La reputazione di questo utente non è disponibile';

  @override
  String get statusLabel => 'Stato';

  @override
  String get paymentMethodLabel => 'Metodo di pagamento';

  @override
  String get createdLabel => 'Creata';

  @override
  String get userInformationTitle => 'Informazioni utente';

  @override
  String get fileTypeVideo => 'Video';

  @override
  String get fileTypeImage => 'Immagine';

  @override
  String get fileTypeArchive => 'Archivio';

  @override
  String get fileTypeFile => 'File';

  @override
  String buyingSatsAmount(String sats) {
    return 'Acquisto di $sats sats';
  }

  @override
  String sellingSatsAmount(String sats) {
    return 'Vendita di $sats sats';
  }

  @override
  String get viewOrderLink => 'Vedi ordine';

  @override
  String timeLeftLabel(String time) {
    return '$time rimasti';
  }

  @override
  String get invoiceNoLongerExpected =>
      'Questo ordine non attende più una fattura. Aggiornamento dello stato…';

  @override
  String get invoiceAwaitingNode =>
      'Inviata. Il nodo non ha ancora risposto: ti porteremo all\'operazione non appena lo farà.';

  @override
  String get invoiceAwaitingNodeLong =>
      'Il nodo non ha ancora risposto. Se l\'operazione non va avanti, inviala di nuovo.';

  @override
  String get invoiceSubmitInFlight =>
      'Una fattura per questo ordine è già in fase di invio. Attendi la risposta.';

  @override
  String get waitingForTradeAmount =>
      'In attesa dell\'importo dell\'operazione — riprova tra poco.';

  @override
  String get fetchingTradeAmount => 'Recupero dell\'importo dell\'operazione…';

  @override
  String get enterInvoiceManually => 'Inserisci la fattura manualmente';

  @override
  String get rangeAmountTakeAction => 'Prendi l\'ordine';

  @override
  String orderAmountOutOfRange(int min, int max) {
    return 'L\'importo deve essere compreso tra $min e $max sats per questo nodo Mostro';
  }

  @override
  String orderCurrencyNotAccepted(String currency) {
    return 'Questo nodo Mostro non accetta $currency. Scegli un\'altra valuta';
  }

  @override
  String orderAmountOutOfRangeFiat(int min, int max, String currency) {
    return 'L\'importo deve essere compreso tra $min e $max $currency per questo nodo Mostro';
  }

  @override
  String get priceTypeMarket => 'Mercato';

  @override
  String get priceTypeFixed => 'Fisso';

  @override
  String get priceTypeInfoTooltip => 'Info sul tipo di prezzo';

  @override
  String get premiumSectionLabel => 'Premio';

  @override
  String get fixedPriceRangeNotAvailable =>
      'Il prezzo fisso non è disponibile per gli ordini a intervallo. Disattiva l\'intervallo per usare un prezzo fisso.';

  @override
  String get priceTypesDialogTitle => 'Tipi di prezzo';

  @override
  String get priceTypesDialogContent =>
      'Prezzo di mercato: il tuo ordine segue il tasso di mercato, con il premio o lo sconto che imposti.\n\nPrezzo fisso: imposti l\'importo esatto in sats; non segue il mercato.';

  @override
  String get newOrderTitle => 'Nuovo ordine';

  @override
  String get amountSectionSell => 'Quanto vendi';

  @override
  String get amountSectionBuy => 'Quanto compri';

  @override
  String get amountModeSingle => 'Singolo';

  @override
  String get amountModeRange => 'Intervallo';

  @override
  String get amountMinLabel => 'Minimo';

  @override
  String get amountMaxLabel => 'Massimo';

  @override
  String paymentMethodsChosenCount(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString selezionati',
      one: '1 selezionato',
      zero: 'nessuno selezionato',
    );
    return '$_temp0';
  }

  @override
  String get paymentMethodAdd => 'Aggiungi';

  @override
  String get paymentMethodSearchHint => 'Cerca metodi';

  @override
  String get customPaymentMethodLabel => 'Metodo di pagamento personalizzato';

  @override
  String get priceSectionTitle => 'Prezzo';

  @override
  String premiumSellAbove(String premium) {
    return 'Vendi $premium% sopra il prezzo di mercato';
  }

  @override
  String premiumSellBelow(String premium) {
    return 'Vendi $premium% sotto il mercato';
  }

  @override
  String premiumBuyBelow(String premium) {
    return 'Paghi $premium% meno del mercato';
  }

  @override
  String premiumBuyAbove(String premium) {
    return 'Paghi $premium% in più';
  }

  @override
  String get premiumExactMarket => 'Prezzo di mercato esatto';

  @override
  String get fixedPriceNote =>
      'A prezzo fisso l\'ordine non segue il mercato: l\'importo in sats resta esattamente come lo scrivi.';

  @override
  String get previewHintNoAmount =>
      'Scrivi un importo e vedrai qui come risulta l\'ordine.';

  @override
  String previewSellMarket(String amount, String premium, String active) {
    return 'Vendi BTC per $amount a prezzo di mercato $premium$active';
  }

  @override
  String previewSellMarketExact(String amount, String active) {
    return 'Vendi BTC per $amount a prezzo di mercato$active';
  }

  @override
  String previewBuyMarket(String amount, String premium, String active) {
    return 'Compri BTC per $amount a prezzo di mercato $premium$active';
  }

  @override
  String previewBuyMarketExact(String amount, String active) {
    return 'Compri BTC per $amount a prezzo di mercato$active';
  }

  @override
  String previewSellFixed(String sats, String amount, String active) {
    return 'Vendi $sats per $amount a prezzo fisso$active';
  }

  @override
  String previewBuyFixed(String sats, String amount, String active) {
    return 'Compri $sats per $amount a prezzo fisso$active';
  }

  @override
  String previewActiveSuffix(String hours) {
    return ' · attivo $hours';
  }

  @override
  String get publishOrder => 'Pubblica ordine';

  @override
  String removePaymentMethod(String method) {
    return 'Rimuovi $method';
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
  String get paymentMethodsLabel => 'Metodi di pagamento';

  @override
  String get customPaymentMethodHint => 'Metodo di pagamento personalizzato…';

  @override
  String amountRangeError(String min, String max) {
    return 'L\'importo deve essere compreso tra $min e $max';
  }

  @override
  String get enterAmountTitle => 'Inserisci l\'importo';

  @override
  String minMaxRangeLabel(String min, String max, String currency) {
    return 'Min: $min – Max: $max $currency';
  }

  @override
  String get ratingFailed => 'Valutazione non riuscita. Riprova.';

  @override
  String get submitUppercaseButton => 'INVIA';

  @override
  String selectStarTooltip(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Seleziona $countString stelle',
      one: 'Seleziona 1 stella',
    );
    return '$_temp0';
  }

  @override
  String get disputeDetailsTitle => 'Dettagli della disputa';

  @override
  String get disputeIdLabel => 'ID disputa';

  @override
  String disputeReasonLabel(String reason) {
    return 'Motivo: $reason';
  }

  @override
  String get solverLabel => 'Mediatore';

  @override
  String get serberoLabel => 'Serbero';

  @override
  String get disputeSerberoAssigned =>
      'Serbero, un assistente automatico, sta aiutando con la tua disputa. Ti farà alcune domande qui e passerà il caso a una persona se necessario.';

  @override
  String get disputeSolverTookOver =>
      'Un mediatore ha preso in carico la tua disputa.';

  @override
  String get disputeScreenTitle => 'Disputa';

  @override
  String get filtersDialogTitle => 'Filtri';

  @override
  String get resetButton => 'Reimposta';

  @override
  String get currencyLabel => 'Valuta';

  @override
  String get ratingLabel => 'Valutazione';

  @override
  String get applyButton => 'Applica';

  @override
  String get successLabel => 'Successo';

  @override
  String get copyButton => 'Copia';

  @override
  String get shareButton => 'Condividi';

  @override
  String sendSatsToAddress(String sats) {
    return 'Invia $sats sats a:';
  }

  @override
  String get changeButton => 'Modifica';

  @override
  String get unableToOpenNotification =>
      'Impossibile aprire i dettagli della notifica.';

  @override
  String get reasonBestPremium => 'Miglior premio';

  @override
  String get reasonMostReputable => 'Più affidabile';

  @override
  String get marketPriceCaption => 'Prezzo di mercato';

  @override

  String effectiveRateUsd(String rate, String currency) {
    return '~$rate $currency/USD';
  }

  @override
  String reputationTradesLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'operazioni',
      one: 'operazione',
    );
    return '$_temp0';
  }

  @override
  String reputationDaysLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'giorni',
      one: 'giorno',
    );
    return '$_temp0';
  }

  @override
