// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Mostro';

  @override
  String get loading => 'Chargement…';

  @override
  String get actionFailedAnnouncement => 'Action échouée';

  @override
  String get cancel => 'Annuler';

  @override
  String get confirm => 'Confirmer';

  @override
  String get done => 'Terminé';

  @override
  String get skip => 'Passer';

  @override
  String get chatTimestampYesterday => 'Hier';

  @override
  String get disputesEmptyState => 'Vos litiges apparaîtront ici';

  @override
  String get disputeAttachFile => 'Joindre un fichier';

  @override
  String get disputeWriteMessageHint => 'Écrire un message…';

  @override
  String get disputeSend => 'Envoyer';

  @override
  String get orderDispute => 'Litige sur l\'ordre';

  @override
  String get disputeSolverAssigned =>
      'Un médiateur a pris en charge votre litige. Il vous contactera ici sous peu.';

  @override
  String get disputeChatClosed => 'Ce litige a été résolu. Le chat est fermé.';

  @override
  String get messageCopied => 'Copié';

  @override
  String get disputeLoadError =>
      'Impossible de charger les litiges. Veuillez réessayer.';

  @override
  String get disputeSolverNotAssigned =>
      'Aucun médiateur n\'a encore pris ce litige. Vous pourrez écrire dès qu\'un médiateur l\'aura pris.';

  @override
  String get disputeNotFound => 'Litige introuvable.';

  @override
  String get disputeNotFoundForOrder => 'Aucun litige trouvé pour cet ordre.';

  @override
  String get disputeResolved => 'Résolu';

  @override
  String get disputeSuccessfullyCompleted => 'Terminé avec succès';

  @override
  String get disputeCoopCancelMessage =>
      'L\'ordre a été annulé d\'un commun accord. Aucun fonds n\'a été transféré.';

  @override
  String orderLabel(String orderId) {
    return 'Ordre $orderId';
  }

  @override
  String get disputeStatusClosed => 'Fermé';

  @override
  String disputeWith(String role, String counterparty) {
    return 'Litige avec $role : $counterparty';
  }

  @override
  String get seller => 'Vendeur';

  @override
  String get buyer => 'Acheteur';

  @override
  String get disputeStatusInitiated => 'Initié';

  @override
  String get disputeStatusInProgress => 'En cours';

  @override
  String get disputeStatusResolved => 'Résolu';

  @override
  String get disputeInProgress =>
      'Ce litige est actuellement en cours. Un médiateur examine votre cas.';

  @override
  String get disputeInstruction1 =>
      'Attendez qu\'un médiateur prenne en charge votre litige. Une fois qu\'il est là, partagez toute preuve pertinente pour aider à clarifier la situation.';

  @override
  String get disputeInstruction2 =>
      'La décision finale sera prise sur la base des preuves présentées.';

  @override
  String get disputeInstruction3 =>
      'Si vous ne répondez pas, le système supposera que vous ne voulez pas coopérer et vous pourriez perdre le litige.';

  @override
  String disputeOpenedByYouAgainstSeller(String counterparty) {
    return 'Vous avez ouvert ce litige contre le vendeur $counterparty, veuillez lire attentivement ci-dessous :';
  }

  @override
  String disputeOpenedByYouAgainstBuyer(String counterparty) {
    return 'Vous avez ouvert ce litige contre l\'acheteur $counterparty, veuillez lire attentivement ci-dessous :';
  }

  @override
  String get disputeWaitingForAdmin =>
      'En attente de l\'attribution d\'un médiateur';

  @override
  String get disputeLostFundsToBuyer =>
      'Le médiateur a tranché le litige en faveur de l\'acheteur. Les sats ont été libérés à l\'acheteur.';

  @override
  String get disputeLostFundsToSeller =>
      'Le médiateur a annulé l\'ordre et rendu les sats au vendeur. Vous n\'avez pas reçu les sats.';

  @override
  String get walkthroughWelcomeTitle => 'Bitcoin en P2P, sans KYC';

  @override
  String get walkthroughWelcomeBody1 =>
      'Mostro est un exchange pair-à-pair qui vous permet d\'échanger du Bitcoin contre n\'importe quelle devise, avec le moyen de paiement de votre choix, sans KYC et sans communiquer vos données à qui que ce soit.';

  @override
  String get walkthroughWelcomeBody2 =>
      'Il est construit sur Nostr, ce qui le rend résistant à la censure. Personne ne peut vous empêcher d\'échanger.';

  @override
  String get walkthroughPrivacyTitle => 'Confidentialité par défaut';

  @override
  String get walkthroughPrivacyBody1 =>
      'Mostro génère une nouvelle identité pour chaque transaction : impossible de relier vos transactions entre elles.';

  @override
  String get walkthroughPrivacyBody2 =>
      'Vous pouvez aussi décider de votre niveau de confidentialité :';

  @override
  String get walkthroughReputationModeName => 'Mode réputation';

  @override
  String get walkthroughReputationModeBody =>
      'Les autres voient vos transactions réussies et votre niveau de confiance.';

  @override
  String get walkthroughFullPrivacyModeName => 'Mode confidentialité totale';

  @override
  String get walkthroughFullPrivacyModeBody =>
      'Aucune réputation n\'est construite, mais votre activité reste totalement anonyme.';

  @override
  String get walkthroughPrivacyFooter =>
      'Changez de mode à tout moment depuis l\'écran Compte. C\'est aussi là que vous devriez sauvegarder vos mots secrets : ils sont le seul moyen de récupérer votre compte.';

  @override
  String get walkthroughHeldTitle => 'Sécurité à chaque étape';

  @override
  String get walkthroughHeldBody1 =>
      'Les sats du vendeur restent bloqués jusqu\'à la fin de la transaction. Cela protège les deux parties.';

  @override
  String get walkthroughHeldBody2 =>
      'L\'application est aussi conçue pour être intuitive et simple pour tous les utilisateurs.';

  @override
  String get walkthroughChatTitle => 'Chat entièrement chiffré';

  @override
  String get walkthroughChatBody1 =>
      'Chaque transaction a son propre chat privé, chiffré de bout en bout. Seuls vous et votre contrepartie pouvez le lire, sauf si l\'un de vous partage sa clé.';

  @override
  String get walkthroughChatBody2 =>
      'En cas de litige, partager cette clé avec un médiateur lui permet de lire le chat et de vous aider à le régler.';

  @override
  String get walkthroughTakeTitle => 'Prendre un ordre';

  @override
  String get walkthroughTakeBody1 =>
      'Parcourez le carnet d\'ordres, choisissez un ordre qui vous convient et suivez la transaction étape par étape.';

  @override
  String get walkthroughTakeBody2 =>
      'Vous pourrez consulter le profil de votre contrepartie, discuter en toute sécurité et finaliser la transaction facilement.';

  @override
  String get walkthroughMakeTitle =>
      'Vous ne trouvez pas ce qu\'il vous faut ?';

  @override
  String get walkthroughMakeBody1 =>
      'Vous pouvez aussi créer votre propre ordre et attendre que quelqu\'un le prenne.';

  @override
  String get walkthroughMakeBody2 =>
      'Définissez le montant et votre moyen de paiement préféré. Mostro s\'occupe du reste.';

  @override
  String get walkthroughNext => 'Suivant';

  @override
  String walkthroughStepCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String walkthroughStepSemantics(int current, int total) {
    return 'Étape $current sur $total';
  }

  @override
  String get tabBuyBtc => 'Acheter BTC';

  @override
  String get tabSellBtc => 'Vendre BTC';

  @override
  String get filterButtonLabel => 'Filtrer';

  @override
  String filtersActiveCount(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString filtres actifs',
      one: '1 filtre actif',
    );
    return '$_temp0';
  }

  @override
  String get noOrdersAvailable => 'Aucun ordre disponible';

  @override
  String get justNow => 'à l\'instant';

  @override
  String minutesAgo(int m) {
    return 'il y a $m min';
  }

  @override
  String hoursAgo(int h) {
    return 'il y a ${h}h';
  }

  @override
  String daysAgo(int d) {
    return 'il y a ${d}j';
  }

  @override
  String get invoiceRejected =>
      'Le nœud a refusé cette facture. Vérifiez son montant et son expiration et ajoutez-en une nouvelle.';

  @override
  String get invoiceCopied => 'Facture copiée';

  @override
  String get submitButtonLabel => 'Soumettre';

  @override
  String get orderAlreadyTaken => 'Cet ordre a déjà été pris';

  @override
  String get nodeProtocolUnsupported =>
      'Ce nœud Mostro utilise une version du protocole que cette application ne prend pas en charge. Choisissez un autre nœud dans les Paramètres ou vérifiez si une mise à jour de l\'application est disponible';

  @override
  String get nodeCapabilitiesUnknown =>
      'Vérification en cours des capacités du nœud Mostro sélectionné. Réessayez dans un instant';

  @override
  String get tradeOnOtherNode =>
      'Cette transaction appartient à un autre nœud Mostro. Passez sur ce nœud pour la poursuivre';

  @override
  String get mostroMaintenanceMode =>
      'Le nœud Mostro auquel vous êtes connecté est en maintenance. Réessayez plus tard ou connectez-vous à un autre nœud Mostro dans les Paramètres';

  @override
  String get storageUnavailable =>
      'L\'application ne peut pas créer ni prendre d\'ordres tant que sa base de données locale est indisponible. Redémarrez l\'application et réessayez';

  @override
  String get rangeOrderWithSats =>
      'Un ordre à fourchette ne peut pas avoir de montant fixe en sats : il est coté au prix du marché lors de sa prise.';

  @override
  String get orderIdCopied => 'ID d\'ordre copié';

  @override
  String get comingSoonMessage => 'Bientôt disponible';

  @override
  String get tradeStatusCompleted => 'Terminé';

  @override
  String get tradeStatusCancelled => 'Annulé';

  @override
  String get tradeStatusDisputed => 'En litige';

  @override
  String get accountScreenTitle => 'Compte';

  @override
  String get secretWordsTitle => 'Mots secrets';

  @override
  String get privacyCardTitle => 'Confidentialité';

  @override
  String get reputationMode => 'Mode réputation';

  @override
  String get reputationModeSubtitle =>
      'Vos transactions comptent pour votre réputation publique';

  @override
  String get fullPrivacyMode => 'Mode confidentialité totale';

  @override
  String get fullPrivacyModeSubtitle =>
      'Chaque transaction utilise une nouvelle identité, sans réputation';

  @override
  String get generateNewUserButton => 'Générer un nouvel utilisateur';

  @override
  String get importMostroUserButton => 'Importer un utilisateur Mostro';

  @override
  String get generateNewUserDialogTitle => 'Générer un nouvel utilisateur ?';

  @override
  String get generateNewUserDialogContent =>
      'Cela créera une toute nouvelle identité. Vos mots secrets actuels ne fonctionneront plus — assurez-vous de les avoir sauvegardés avant de continuer.';

  @override
  String get continueButtonLabel => 'Continuer';

  @override
  String get importMnemonicDialogTitle => 'Importer les mots secrets';

  @override
  String get importMnemonicHintText => 'Entrez vos 12 mots secrets';

  @override
  String get importButtonLabel => 'Importer';

  @override
  String get refreshUserDialogTitle => 'Actualiser l\'utilisateur ?';

  @override
  String get refreshUserDialogContent =>
      'Cela va récupérer à nouveau vos transactions et ordres depuis l\'instance Mostro. Utilisez cette option si vous pensez que vos données sont désynchronisées ou si des ordres manquent.';

  @override
  String get hideButtonLabel => 'Masquer';

  @override
  String get showWordsButton => 'Afficher les mots';

  @override
  String get settingsScreenTitle => 'Paramètres';

  @override
  String get languageSettingTitle => 'Langue';

  @override
  String get appearanceSettingTitle => 'Apparence';

  @override
  String get appearanceDialogTitle => 'Apparence';

  @override
  String get allCurrencies => 'Toutes les devises';

  @override
  String get lightningAddressSettingTitle => 'Adresse Lightning';

  @override
  String get nwcWalletSettingTitle => 'Portefeuille NWC';

  @override
  String get relaysSettingTitle => 'Relais';

  @override
  String get pushNotificationsSettingTitle => 'Notifications push';

  @override
  String get logReportSettingTitle => 'Rapport de logs';

  @override
  String get mostroNodeSettingTitle => 'Nœud Mostro';

  @override
  String get themeDark => 'Sombre';

  @override
  String get themeLight => 'Clair';

  @override
  String get themeSystemDefault => 'Par défaut du système';

  @override
  String get lightningAddressDialogTitle => 'Adresse Lightning';

  @override
  String get lightningAddressHintText => 'utilisateur@domaine.com';

  @override
  String get invalidLightningAddressFormat =>
      'Doit être au format utilisateur@domaine';

  @override
  String get clearButtonLabel => 'Effacer';

  @override
  String get saveButtonLabel => 'Enregistrer';

  @override
  String get scanQrCodeTitle => 'Scanner le code QR';

  @override
  String get selectLanguageTitle => 'Sélectionner la langue';

  @override
  String get selectCurrencyDialogTitle => 'Sélectionner la devise';

  @override
  String get addRelayDialogTitle => 'Ajouter un relais';

  @override
  String get addButtonLabel => 'Ajouter';

  @override
  String get relayHintText => 'wss://relay.example.com';

  @override
  String get relayErrorMustStartWithWss => 'Doit commencer par wss://';

  @override
  String get relayErrorUrlTooShort => 'L\'URL est trop courte';

  @override
  String get relayErrorDuplicate => 'Le relais est déjà dans la liste';

  @override
  String get pasteQrCodeHeading => 'Coller le contenu du code QR';

  @override
  String get pasteButtonLabel => 'Coller';

  @override
  String get clipboardEmptyError => 'Le presse-papiers est vide';

  @override
  String get enterValueError => 'Veuillez entrer une valeur';

  @override
  String get trustedBadgeLabel => 'De confiance';

  @override
  String get confirmButtonLabel => 'Confirmer';

  @override
  String get selectMostroNode => 'Choisir un nœud';

  @override
  String get addCustomNode => 'Ajouter votre propre nœud';

  @override
  String get nodePubkeyFieldLabel => 'Clé publique';

  @override
  String get nodePubkeyFieldHint => 'Hex de 64 caractères ou npub…';

  @override
  String get nodeNameOptionalLabel => 'Nom (facultatif)';

  @override
  String get invalidPubkeyFormat =>
      'Entrez une clé publique valide (hex de 64 caractères ou npub)';

  @override
  String get privateKeyNotAllowed =>
      'Ceci est une clé privée — ne la partagez jamais. Entrez la clé publique du nœud';

  @override
  String get nodeAlreadyExists => 'Ce nœud est déjà dans la liste';

  @override
  String get nodeAddedSuccess => 'Nœud ajouté';

  @override
  String nodeSwitchedSuccess(String nodeName) {
    return 'Vous utilisez maintenant $nodeName';
  }

  @override
  String get errorSwitchingNode => 'Échec du changement de nœud';

  @override
  String get cannotRemoveActiveNode =>
      'Le nœud actif ne peut pas être supprimé — passez d\'abord à un autre nœud';

  @override
  String get deleteCustomNodeTitle => 'Supprimer le nœud';

  @override
  String get deleteCustomNodeMessage =>
      'Supprimer ce nœud personnalisé de votre liste ?';

  @override
  String get deleteCustomNodeConfirm => 'Supprimer';

  @override
  String get nodeRemovedSuccess => 'Nœud supprimé';

  @override
  String get nodeStorageUnavailable =>
      'La base de données locale n\'est pas prête. Redémarrez l\'application et réessayez';

  @override
  String nodeSelectorSubtitle(String code) {
    return 'Ordres et devises en $code, votre devise';
  }

  @override
  String get nodeSelectorSubtitleNoCurrency => 'Ordres ouverts sur chaque nœud';

  @override
  String nodeMissingCurrencyChip(String code) {
    return 'SANS $code';
  }

  @override
  String get nodeOrdersNowLabel => 'ordres en cours';

  @override
  String get nodeNoOrdersLabel => 'aucun ordre';

  @override
  String nodeOrdersInCurrency(int count, String code) {
    return '· $count en $code';
  }

  @override
  String get nodeFeeLabel => 'frais';

  @override
  String get nodeFeeTooltip =>
      'Mostro répartit les frais entre les deux parties.';

  @override
  String get nodePerTradeLabel => 'par transaction';

  @override
  String get nodeCustodyLightning => 'Garde Lightning';

  @override
  String nodeCustodyCashu(String mint) {
    return 'Garde Cashu · $mint';
  }

  @override
  String get nodeCustodyUnknown => 'Garde —';

  @override
  String nodeBondPct(String pct) {
    return 'Dépôt $pct %';
  }

  @override
  String get nodeBondNone => 'Sans dépôt';

  @override
  String nodeStatusOnline(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString ordres',
      one: '1 ordre',
    );
    return 'En ligne · $_temp0';
  }

  @override
  String get nodeStatusNoUsefulOrders => 'Aucun ordre dans vos devises';

  @override
  String nodeStatusUnreachable(String ago) {
    return 'Ne répond pas · dernier signal $ago';
  }

  @override
  String get nodeStatusUnreachableNoSignal => 'Ne répond pas';

  @override
  String get nodeChoiceSubtitle =>
      'Sélectionnez le nœud Mostro sur lequel vous voulez échanger';

  @override
  String get nodeOperatorDisclaimer =>
      'L\'équipe de développement de Mostro n\'est pas responsable de l\'utilisation que font les opérateurs de nœuds de la plateforme. Chaque opérateur contrôle son propre nœud Mostro et est seul responsable de ses actions. En utilisant Mostro, vous acceptez l\'entière responsabilité de vos transactions et reconnaissez que l\'équipe de développement n\'a aucun contrôle sur les opérateurs de nœuds individuels.';

  @override
  String get nodeChoiceConfirm => 'Utiliser ce nœud';

  @override
  String get nodeChoiceSaveFailed =>
      'Impossible d\'enregistrer votre choix. Réessayez.';

  @override
  String get nodeVerifyKeyWarning =>
      'Vérifiez la clé auprès de l\'opérateur. Un faux nœud peut voir vos ordres.';

  @override
  String get nodeInvalidPubkeyShort => 'Ce n\'est pas une clé publique valide.';

  @override
  String get nodeNameFieldHint => 'Mostro local';

  @override
  String get nodePubkeyCopied => 'Clé copiée';

  @override
  String get nodeNotSelectableOffline => 'Ce nœud ne répond pas';

  @override
  String get nodeStatsLoading => 'Chargement des données du nœud';

  @override
  String get nodeSwitchConfirmTitle => 'Changer de nœud ?';

  @override
  String nodeSwitchConfirmBody(String currentNode, String newNode) {
    return 'Vous avez une transaction en cours sur $currentNode. Elle y reste ; le carnet affichera désormais $newNode.';
  }

  @override
  String get nodeSwitchConfirmAction => 'Changer de nœud';

  @override
  String get nodeTradesCheckFailed =>
      'Impossible de vérifier vos transactions. Réessayez.';

  @override
  String get notificationsScreenTitle => 'Notifications';

  @override
  String get markAllAsReadMenuItem => 'Tout marquer comme lu';

  @override
  String get clearAllMenuItem => 'Tout effacer';

  @override
  String get youMustBackUpYourAccount => 'Vous devez sauvegarder votre compte';

  @override
  String get tapToViewAndSaveSecretWords =>
      'Appuyez pour afficher et sauvegarder vos mots secrets.';

  @override
  String get noNotifications => 'Aucune notification';

  @override
  String get markAsRead => 'Marquer comme lu';

  @override
  String get deleteNotificationLabel => 'Supprimer';

  @override
  String get rateScreenHeader => 'NOTER';

  @override
  String get successfulOrder => 'Ordre réussi';

  @override
  String get closeRatingButton => 'FERMER';

  @override
  String get aboutScreenTitle => 'À propos';

  @override
  String get linkCopiedToClipboard => 'Lien copié dans le presse-papiers';

  @override
  String get pubkeyLabel => 'Clé publique';

  @override
  String get relaysLabel => 'Relais';

  @override
  String get footerTagline => 'Open source. Non dépositaire. Privé.';

  @override
  String get drawerTitle => 'Mostro';

  @override
  String get drawerTagline => 'Échange P2P';

  @override
  String get drawerStageBadge => 'Beta';

  @override
  String drawerVersion(String version) {
    return 'Version $version';
  }

  @override
  String get drawerAccountMenuItem => 'Compte';

  @override
  String get drawerSettingsMenuItem => 'Paramètres';

  @override
  String get drawerAboutMenuItem => 'À propos';

  @override
  String get navOrderBook => 'Carnet d\'ordres';

  @override
  String get navMyTrades => 'Mes transactions';

  @override
  String get navChat => 'Chat';

  @override
  String get loadingOrders => 'Chargement des ordres…';

  @override
  String get errorLoadingOrders =>
      'Impossible de charger les ordres. Vérifiez votre connexion.';

  @override
  String get retry => 'Réessayer';

  @override
  String disableRelayLabel(String url) {
    return 'Désactiver le relais $url';
  }

  @override
  String enableRelayLabel(String url) {
    return 'Activer le relais $url';
  }

  @override
  String get removeRelayTooltip => 'Supprimer le relais';

  @override
  String get relayAddFailed => 'Échec de l\'ajout du relais';

  @override
  String get relayRemoveFailed => 'Échec de la suppression du relais';

  @override
  String get backupRitualSecondFailureMessage =>
      'C\'est encore incorrect. Veuillez vérifier et sauvegarder vos mots secrets, puis recommencer la vérification depuis le début.';

  @override
  String get cancelTradeDialogTitle => 'Annuler la transaction ?';

  @override
  String get cancelTradeDialogContent =>
      'Vous allez demander une annulation coopérative. La contrepartie doit également accepter pour que la transaction soit entièrement annulée.';

  @override
  String get cancelTradeDialogContentNotStarted =>
      'La transaction n\'a pas encore commencé, elle est donc annulée immédiatement. La contrepartie n\'a pas besoin d\'accepter.';

  @override
  String get cancelTradeDialogContentMaybeStarted =>
      'Si la transaction n\'a pas encore commencé, elle est annulée immédiatement. Si elle a déjà commencé, la contrepartie doit également accepter.';

  @override
  String get noButtonLabel => 'Non';

  @override
  String get yesButtonLabel => 'Oui';

  @override
  String get yesCancelButtonLabel => 'Oui, annuler';

  @override
  String get cancelRequestSent => 'Demande d\'annulation envoyée';

  @override
  String get cancelRequestFailed =>
      'Échec de l\'annulation. Veuillez réessayer.';

  @override
  String get tradeCardCancelRequestedByMeTitle => 'Annulation demandée';

  @override
  String get tradeCardCancelRequestedByMeMessage =>
      'Vous avez demandé l\'annulation de cette transaction. Elle reste ouverte jusqu\'à ce que la contrepartie annule aussi. Sans réponse de sa part, vous pouvez ouvrir un litige.';

  @override
  String get tradeCardCancelRequestedByPeerTitle =>
      'La contrepartie veut annuler';

  @override
  String get tradeCardCancelRequestedByPeerMessage =>
      'Elle a demandé l\'annulation de cette transaction. Acceptez pour y mettre fin sans mouvement de fonds, ou poursuivez la transaction.';

  @override
  String get tradeCancelRequestedByMeNotice =>
      'Vous avez demandé l\'annulation de cette transaction. Elle reste ouverte jusqu\'à ce que la contrepartie annule aussi. Sans réponse de sa part, vous pouvez ouvrir un litige.';

  @override
  String get tradeCancelRequestedByPeerNotice =>
      'La contrepartie a demandé l\'annulation de cette transaction. Acceptez pour y mettre fin sans mouvement de fonds, ou poursuivez la transaction.';

  @override
  String get acceptCancelButton => 'Accepter l\'annulation';

  @override
  String get cancelTradeDialogContentAccept =>
      'La contrepartie a demandé l\'annulation. Annuler maintenant met fin à la transaction pour vous deux, sans mouvement de fonds.';

  @override
  String get fiatSentFailed =>
      'Échec de la confirmation du paiement. Veuillez réessayer.';

  @override
  String get releaseFailed => 'Échec de la libération. Veuillez réessayer.';

  @override
  String get releasePendingLabel => 'Libération… en attente du nœud';

  @override
  String get releaseSentNotice =>
      'Libération envoyée. Le nœud peut mettre jusqu\'à une minute à la confirmer.';

  @override
  String get releaseUnconfirmedNotice =>
      'Le nœud n\'a pas encore confirmé la libération. Si l\'ordre ne se met pas à jour, vous pouvez libérer à nouveau.';

  @override
  String get cancelTradeButton => 'Annuler la transaction';

  @override
  String get payHoldInvoiceButton => 'Payer la facture';

  @override
  String get openDisputeButton => 'Ouvrir un litige';

  @override
  String get releaseSatsButton => 'Libérer les sats';

  @override
  String get confirmReleaseSatsButton => 'Confirmer et libérer les sats';

  @override
  String get shareOrderButton => 'Partager l\'ordre';

  @override
  String get orderPillYouAreSelling => 'VOUS VENDEZ';

  @override
  String get orderPillYouAreBuying => 'VOUS ACHETEZ';

  @override
  String get myOrderSellTitle => 'Votre ordre de vente';

  @override
  String get myOrderBuyTitle => 'Votre ordre d\'achat';

  @override
  String get cancelOrderFailed =>
      'Échec de l\'annulation de l\'ordre. Veuillez réessayer.';

  @override
  String get closeButtonLabel => 'Fermer';

  @override
  String get copyButtonLabel => 'Copier';

  @override
  String get orderStatusWaitingForTaker => 'En attente d\'un preneur';

  @override
  String get orderStatusInProgress => 'En cours';

  @override
  String get orderStatusExpired => 'Expiré';

  @override
  String get copyOrderIdTooltip => 'Copier l\'ID de l\'ordre';

  @override
  String get orderNotFoundTitle => 'Ordre introuvable';

  @override
  String get orderNotFoundMessage => 'Cet ordre n\'est plus disponible.';

  @override
  String get orderCancelledSuccess => 'Ordre annulé avec succès.';

  @override
  String get aboutDocumentationTitle => 'Documentation';

  @override
  String get aboutMostroNodeTitle => 'Nœud Mostro';

  @override
  String get aboutVersionLabel => 'Version';

  @override
  String get aboutCommitHashLabel => 'Hash du commit';

  @override
  String get aboutLicenseLabel => 'Licence';

  @override
  String get aboutLicenseName => 'AGPLv3+';

  @override
  String get aboutGithubRepoName => 'MostroP2P/app';

  @override
  String get aboutCopiedToClipboard => 'Copié dans le presse-papiers';

  @override
  String get aboutLicenseDialogTitle =>
      'Licence publique générale Affero GNU v3';

  @override
  String get aboutNodeLoadingText => 'Chargement des informations du nœud…';

  @override
  String get aboutNodeUnavailable => 'Informations du nœud indisponibles';

  @override
  String get aboutNodeRetry => 'Réessayer';

  @override
  String get aboutLightningNetworkSection => 'Réseau Lightning';

  @override
  String get aboutFiatCurrenciesLabel => 'Devises fiat';

  @override
  String get aboutPriceSourceLabel => 'Source';

  @override
  String get aboutPriceSection => 'Prix';

  @override
  String get aboutPriceSourcesFootnote =>
      'Les sources de prix sont les fournisseurs des taux que le nœud publie en ce moment ; un fournisseur en panne ou écarté n\'apparaît pas.';

  @override
  String get aboutMostroVersionLabel => 'Version Mostro';

  @override
  String get aboutMostroCommitLabel => 'Commit Mostro';

  @override
  String get aboutHoldInvoiceExpLabel => 'Expiration de la facture de retenue';

  @override
  String get aboutHoldInvoiceCltvLabel => 'CLTV de la facture de retenue';

  @override
  String get aboutInvoiceExpWindowLabel => 'Fenêtre d\'expiration de facture';

  @override
  String get aboutProofOfWorkLabel => 'Preuve de travail';

  @override
  String get aboutMaxOrdersPerResponseLabel => 'Max ordres/réponse';

  @override
  String get aboutLndVersionLabel => 'Version LND';

  @override
  String get aboutSupportedChainsLabel => 'Chaînes supportées';

  @override
  String get aboutSupportedNetworksLabel => 'Réseaux supportés';

  @override
  String get aboutSatoshisSuffix => 'Satoshis';

  @override
  String get aboutBlocksSuffix => 'blocs';

  @override
  String get aboutFiatCurrenciesAll => 'Toutes';

  @override
  String get aboutAntiAbuseBondSection => 'Dépôt anti-abus';

  @override
  String get aboutBondEnabledValue => 'Activé';

  @override
  String get aboutBondDisabledValue => 'Désactivé';

  @override
  String get aboutBondUnsupportedValue => 'Non pris en charge';

  @override
  String get aboutBondStatusLabel => 'État du dépôt';

  @override
  String get aboutBondAppliesToLabel => 'S\'applique à';

  @override
  String get aboutBondAppliesToTakers => 'Preneurs';

  @override
  String get aboutBondAppliesToMakers => 'Créateurs';

  @override
  String get aboutBondAppliesToBoth => 'Créateurs et preneurs';

  @override
  String get aboutBondAmountLabel => 'Montant du dépôt';

  @override
  String get aboutBondBaseAmountLabel => 'Dépôt minimal';

  @override
  String get aboutBondNodeShareLabel => 'Part du nœud en cas de saisie';

  @override
  String get aboutBondSlashOnTimeoutLabel => 'Saisie en cas de délai dépassé';

  @override
  String get aboutBondClaimWindowLabel => 'Délai de réclamation du paiement';

  @override
  String aboutBondClaimWindowValue(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString jours',
      one: '$countString jour',
    );
    return '$_temp0';
  }

  @override
  String get openDisputeFailed =>
      'Impossible d\'ouvrir le litige. Veuillez réessayer.';

  @override
  String get openDisputeTitle => 'Ouvrir un litige';

  @override
  String get openDisputeConfirmation =>
      'Êtes-vous sûr de vouloir ouvrir un litige ? Cela transmet la transaction à un médiateur et ne peut pas être annulé.';

  @override
  String get disputeAlreadyOpen =>
      'Un litige est déjà ouvert pour cette transaction.';

  @override
  String get tradeNotDisputable =>
      'Un litige ne peut être ouvert qu\'une fois les fonds bloqués pour cette transaction.';

  @override
  String get tradeWaitingInvoiceBuyerInstruction =>
      'Soumettez votre facture Lightning pour que le vendeur puisse bloquer les fonds.';

  @override
  String get tradeWaitingInvoiceSellerInstruction =>
      'En attente de la facture Lightning de l\'acheteur.';

  @override
  String get tradeWaitingPaymentSellerInstruction =>
      'Payez la facture pour bloquer les fonds et démarrer la transaction.';

  @override
  String get tradeLoadError =>
      'Une erreur s\'est produite lors du chargement de la transaction.';

  @override
  String get tradeWaitingForHoldInvoice => 'En attente de la facture…';

  @override
  String get shareButtonLabel => 'Partager';

  @override
  String get shareFailed => 'Impossible de partager la facture';

  @override
  String get waitingForPaymentConfirmation =>
      'En attente de la confirmation du paiement…';

  @override
  String get orderNoLongerActive => 'Cet ordre n\'est plus actif';

  @override
  String get tradeNoLongerYours =>
      'Vous ne participez plus à cette transaction';

  @override
  String get sessionTimeoutMessage =>
      'Aucune réponse reçue, vérifiez votre connexion et réessayez plus tard';

  @override
  String get noRelayAcceptedMessage =>
      'Aucun relais n\'a accepté votre message. Vérifiez vos relais dans les Paramètres et réessayez';

  @override
  String get noIdentityFoundMessage =>
      'Aucune identité trouvée — essayez de redémarrer l\'application.';

  @override
  String get failedToLoadSecretWordsMessage =>
      'Échec du chargement des mots secrets. Veuillez réessayer.';

  @override
  String get privacyModesInfoTitle => 'Modes de confidentialité';

  @override
  String get privacyModesInfoContent =>
      'Le mode réputation permet aux autres de voir vos transactions réussies.\n\nLe mode confidentialité totale garde votre activité complètement anonyme — aucune réputation n\'est construite.';

  @override
  String get failedToGenerateIdentityMessage =>
      'Échec de la génération de l\'identité. Veuillez réessayer.';

  @override
  String get pendingWipeBannerTitle =>
      'Les données de l\'utilisateur précédent sont toujours sur cet appareil';

  @override
  String get pendingWipeBannerBody =>
      'La suppression de l\'identité précédente n\'a pas pu effacer ses transactions et ses discussions de cet appareil. L\'application réessaiera à la prochaine création ou importation d\'un nouvel utilisateur.';

  @override
  String get pendingWipeBlockedMessage =>
      'Les données de l\'utilisateur précédent n\'ont pas pu être effacées de cet appareil : le nouvel utilisateur n\'a donc pas été configuré et votre utilisateur actuel a été conservé. Veuillez réessayer.';

  @override
  String get wipeNotRecordedMessage =>
      'L\'utilisateur actuel n\'a pas pu être supprimé en toute sécurité : rien n\'a donc été modifié. Veuillez réessayer.';

  @override
  String get identitySwapStorageUnavailableMessage =>
      'Le stockage de l\'appareil n\'est pas disponible pour le moment : l\'utilisateur actuel a donc été conservé et rien n\'a été modifié. Redémarrez l\'application et réessayez.';

  @override
  String get identitySwapPreviousNotReloadedMessage =>
      'Le nouvel utilisateur n\'a pas été configuré, et l\'utilisateur actuel n\'a pas pu être entièrement restauré. Redémarrez l\'application pour le recharger.';

  @override
  String get invalidMnemonicMessage =>
      'Mots secrets invalides. Veuillez vérifier vos mots et réessayer.';

  @override
  String get enterValidMnemonicError => 'Entrez vos 12 mots secrets.';

  @override
  String get orderBookRefreshedMessage => 'Carnet d\'ordres actualisé';

  @override
  String get refreshFailedMessage => 'Échec de l\'actualisation';

  @override
  String get refreshButtonLabel => 'Actualiser';

  @override
  String get okButtonLabel => 'OK';

  @override
  String get moreInformationTooltip => 'Plus d\'informations';

  @override
  String get backedUpBadgeLabel => 'Sauvegardés';

  @override
  String get backupBannerTitle => 'Sécurisez votre réputation';

  @override
  String get backupBannerSubtitle =>
      'Sauvegardez vos 12 mots — cela prend 60 secondes.';

  @override
  String get failedToSaveBackupStatusMessage =>
      'Échec de l\'enregistrement de l\'état de la sauvegarde. Veuillez réessayer.';

  @override
  String get backupRitualStep1Title => 'Étape 1 sur 3 · Notez vos mots';

  @override
  String get backupRitualStep2Title => 'Étape 2 sur 3 · Vérifier';

  @override
  String get backupRitualStep3Title => 'Étape 3 sur 3 · Terminé';

  @override
  String get backupRitualWarningTitle => 'Notez-les sur papier. ';

  @override
  String get backupRitualWarningBody =>
      'Ne les stockez pas dans des photos, des captures d\'écran ou le cloud — quiconque possède ces 12 mots peut voler votre réputation.';

  @override
  String get wordsHiddenOnLeaveNote =>
      'Ils seront masqués quand vous quitterez cet écran';

  @override
  String get wroteThemDownVerifyButton => 'Je les ai notés — vérifier';

  @override
  String get tapCorrectWordsTitle => 'Appuyez sur les mots corrects';

  @override
  String get verifyInstructionsBody =>
      'Nous en demandons 3 au hasard. Si vous les trouvez, nous savons qu\'ils sont bien notés.';

  @override
  String optionsForWordLabel(int number) {
    return 'OPTIONS POUR LE MOT #$number';
  }

  @override
  String get wrongPickMessage =>
      'Pas tout à fait — vérifiez votre papier et réessayez.';

  @override
  String get allWordsCorrectMessage => 'Les 3 mots sont corrects';

  @override
  String get reviewWordsButton => 'Voir les mots';

  @override
  String get accountBackedUpTitle => 'Votre compte est sauvegardé';

  @override
  String get accountBackedUpBody =>
      'Votre réputation est en sécurité. Si vous perdez un jour votre téléphone, restaurez votre compte avec vos 12 mots.';

  @override
  String wordNumberLabel(int number) {
    return 'Mot #$number';
  }

  @override
  String get backupTriggerBody =>
      'Votre réputation réside dans une clé que vous seul détenez. Si vous perdez votre téléphone, vous perdez cette réputation — ';

  @override
  String get backupTriggerBodyHighlight => 'sauvegardez-la en 60 secondes.';

  @override
  String get backupStepWriteDown => 'Notez vos 12 mots sur papier';

  @override
  String get backupStepVerifyRandom =>
      'Nous en demandons 3 au hasard pour confirmer';

  @override
  String get backupStepSecured => 'Terminé — votre compte est sécurisé';

  @override
  String get backupNowButton => 'Sauvegarder maintenant';

  @override
  String get backupLaterButton => 'Je le ferai plus tard';

  @override
  String get nwcConnectionFailedMessage =>
      'La connexion a échoué. Veuillez vérifier votre URI NWC et réessayer.';

  @override
  String get clipboardInvalidNwcUriMessage =>
      'Le presse-papiers ne contient pas d\'URI NWC valide.';

  @override
  String get scanQrButtonLabel => 'Scanner QR';

  @override
  String get connectButtonLabel => 'Connecter';

  @override
  String get walletDisconnectedMessage => 'Portefeuille déconnecté';

  @override
  String get relayLabel => 'Relais';

  @override
  String get disconnectButtonLabel => 'Déconnecter';

  @override
  String relaysMoreSuffix(int count) {
    return '(+$count de plus)';
  }

  @override
  String get chooseNotificationEventsSubtitle =>
      'Choisissez quels événements affichent une notification dans l\'app.';

  @override
  String get notifTradeUpdatesTitle => 'Mises à jour des transactions';

  @override
  String get notifTradeUpdatesSubtitle =>
      'Changements de statut de vos transactions actives';

  @override
  String get notifNewMessagesTitle => 'Nouveaux messages';

  @override
  String get notifNewMessagesSubtitle => 'Messages de votre contrepartie';

  @override
  String get notifPaymentAlertsTitle => 'Alertes de paiement';

  @override
  String get notifPaymentAlertsSubtitle =>
      'Confirmations et échecs de paiements Lightning';

  @override
  String get notifDisputeUpdatesTitle => 'Mises à jour des litiges';

  @override
  String get notifDisputeUpdatesSubtitle =>
      'Actions des médiateurs et résolutions de litiges';

  @override
  String get notifAnnouncementsTitle => 'Annonces';

  @override
  String get notifAnnouncementsSubtitle =>
      'Versions, pannes et changements de relais, signés par le projet Mostro';

  @override
  String get announcementsGroupSubtitle =>
      'Les annonces sont lues depuis les relais et jamais répondues : rien vous concernant n\'est envoyé.';

  @override
  String get announcementLevelInfo => 'Annonce';

  @override
  String get announcementLevelWarning => 'Avis';

  @override
  String get announcementLevelCritical => 'Mise à jour de sécurité';

  @override
  String get announcementOpenLink => 'Ouvrir le lien';

  @override
  String get notificationsBellCritical =>
      'Notifications, une mise à jour de sécurité non lue';

  @override
  String get searchCurrenciesHint => 'Rechercher des devises…';

  @override
  String get noCurrenciesFoundMessage => 'Aucune devise trouvée';

  @override
  String get shareLogsTooltip => 'Partager les journaux';

  @override
  String get noLogsToShareTooltip => 'Aucun journal à partager';

  @override
  String get noLogEntriesMessage => 'Aucune entrée de journal';

  @override
  String get failedToShareLogsMessage => 'Échec du partage des journaux';

  @override
  String get logReportShareHeading => 'Rapport de journaux Mostro';

  @override
  String get tradeFilterAll => 'Tous';

  @override
  String get tradeFilterPending => 'En attente';

  @override
  String get tradeFilterWaitingInvoice => 'En attente de facture';

  @override
  String get tradeFilterWaitingPayment => 'En attente de paiement';

  @override
  String get tradeFilterActive => 'Actif';

  @override
  String get tradeFilterFiatSent => 'Fiat envoyé';

  @override
  String get tradeFilterSuccess => 'Réussi';

  @override
  String get tradeFilterCanceled => 'Annulé';

  @override
  String get tradeFilterDispute => 'Litige';

  @override
  String get menuTooltip => 'Menu';

  @override
  String get noTradesTitle => 'Aucune transaction';

  @override
  String get noTradesSubtitle =>
      'Vos transactions actives et terminées apparaîtront ici.';

  @override
  String get couldNotLoadTradesMessage =>
      'Impossible de charger les transactions';

  @override
  String get sellingBitcoin => 'Vente de Bitcoin';

  @override
  String get buyingBitcoin => 'Achat de Bitcoin';

  @override
  String get tradeInstructionActiveBuyer =>
      'Une fois l\'argent envoyé, marquez-le ci-dessous. N\'ouvrez un litige que si le vendeur cesse de répondre.';

  @override
  String get tradeInstructionFiatSentBuyer =>
      'Paiement marqué comme envoyé. En attente que le vendeur confirme la réception et libère vos sats.';

  @override
  String get tradeInstructionActiveSeller =>
      'Contactez l\'acheteur avec les instructions de paiement via le chat ci-dessus.';

  @override
  String get tradeInstructionFiatSentSeller =>
      'L\'acheteur a confirmé avoir envoyé le paiement. Une fois la réception vérifiée, libérez les sats.';

  @override
  String get tradeInstructionDisputed =>
      'Un médiateur de litige a été assigné. Il vous contactera via l\'application.';

  @override
  String get tradeInstructionPending =>
      'Votre ordre est publié et attend qu\'une contrepartie le prenne. Vous pouvez l\'annuler à tout moment.';

  @override
  String get tradeInstructionCancelled =>
      'Cette transaction a été annulée. Aucun fonds n\'a été échangé.';

  @override
  String get tradeInstructionInProgress => 'Transaction en cours.';

  @override
  String get theAgreedAmount => 'le montant convenu';

  @override
  String get tradeHeadlinePending =>
      'En attente que quelqu\'un prenne votre ordre';

  @override
  String get tradeHeadlineInProgress =>
      'La transaction est en cours de préparation';

  @override
  String get tradeHeadlineWaitingInvoiceBuyer =>
      'Partagez une facture Lightning pour recevoir vos sats';

  @override
  String get tradeHeadlineWaitingInvoiceSeller =>
      'En attente que l\'acheteur partage une facture';

  @override
  String get tradeHeadlineWaitingPaymentBuyer =>
      'En attente que le vendeur bloque les sats';

  @override
  String get tradeHeadlineWaitingPaymentSeller =>
      'Payez la facture pour bloquer les sats';

  @override
  String tradeHeadlineActiveBuyer(String amount) {
    return 'Envoyez $amount au vendeur';
  }

  @override
  String tradeHeadlineActiveSeller(String amount) {
    return 'En attente que l\'acheteur envoie $amount';
  }

  @override
  String get tradeHeadlineFiatSentBuyer =>
      'En attente que le vendeur libère vos sats';

  @override
  String tradeHeadlineFiatSentSeller(String amount) {
    return 'Confirmez que vous avez reçu $amount';
  }

  @override
  String get tradeHeadlineDisputed => 'Litige en cours';

  @override
  String get tradeHeadlineCancelled => 'Ordre annulé';

  @override
  String get tradeHeadlineLoading => 'Chargement de la transaction…';

  @override
  String get tradeTimerPendingConsequence =>
      'S\'il expire, l\'ordre est retiré du carnet. Cela n\'affectera pas votre réputation.';

  @override
  String get tradeTimerExpiryBackToBook =>
      'S\'il expire, l\'ordre retourne au carnet.';

  @override
  String get tradeTimerExpiryCancelled => 'S\'il expire, l\'ordre est annulé.';

  @override
  String get tradeTimerEscrowCancels =>
      'Temps approximatif. S\'il expire, Mostro annule la transaction.';

  @override
  String get tradeTimerEscrowDisputes =>
      'Temps approximatif. S\'il expire, Mostro ouvre un litige.';

  @override
  String get tradeTimerEscrowCancellingBuyer =>
      'Mostro est sur le point d\'annuler la transaction et de rendre les sats au vendeur.';

  @override
  String get tradeTimerEscrowCancellingSeller =>
      'Mostro est sur le point d\'annuler la transaction. Vos sats restent dans votre portefeuille.';

  @override
  String get tradeTimerEscrowDisputing =>
      'Un litige est sur le point d\'être ouvert.';

  @override
  String get tradeStepOrderTaken => 'Ordre pris';

  @override
  String get tradeStepWaitingTaker => 'En attente d\'un preneur';

  @override
  String get tradeStepInvoiceBuyer => 'Le vendeur bloque les sats';

  @override
  String get tradeStepInvoiceSeller => 'Vous bloquez les sats';

  @override
  String get tradeStepFiatBuyer => 'Vous envoyez le paiement';

  @override
  String get tradeStepFiatSeller => 'L\'acheteur envoie le paiement';

  @override
  String get tradeStepReleaseBuyer => 'Le vendeur libère vos sats';

  @override
  String get tradeStepReleaseSeller => 'Vous confirmez et libérez les sats';

  @override
  String get tradeStepPayoutBuyer => 'Mostro vous envoie vos sats';

  @override
  String get tradeStepRate => 'Vous notez la transaction';

  @override
  String tradeCreatedAtLabel(String date) {
    return 'créé $date';
  }

  @override
  String stepIndicator(int current, int total) {
    return 'ÉTAPE $current SUR $total';
  }

  @override
  String get addLightningInvoiceButton => 'Ajouter une facture Lightning';

  @override
  String get viewDisputeButton => 'Voir le litige';

  @override
  String get yourTradeTimelineTitle => 'VOTRE TRANSACTION';

  @override
  String get messageSendFailed =>
      'Échec de l\'envoi du message. Veuillez réessayer.';

  @override
  String get invalidTradeId => 'ID de transaction invalide';

  @override
  String get selectForDetailsHint => 'Sélectionnez ℹ ou 👤\npour les détails';

  @override
  String noMessagesYet(String handle) {
    return 'Pas encore de messages.\nDites bonjour à $handle !';
  }

  @override
  String get exchangeInfoTooltip => 'Infos sur la transaction';

  @override
  String get userInfoTooltip => 'Infos utilisateur';

  @override
  String chattingWith(String handle) {
    return 'Vous discutez avec $handle';
  }

  @override
  String get unknownPeerHandle => 'Inconnu';

  @override
  String get messagesTab => 'Messages';

  @override
  String get disputesTab => 'Litiges';

  @override
  String get tradeInformationTitle => 'Informations sur la transaction';

  @override
  String get orderIdLabel => 'ID de l\'ordre';

  @override
  String get fiatAmountLabel => 'Montant fiat';

  @override
  String get satsAmountLabel => 'Montant en sats';

  @override
  String get peerReputationUnavailable =>
      'La réputation de cet utilisateur n\'est pas disponible';

  @override
  String get statusLabel => 'Statut';

  @override
  String get paymentMethodLabel => 'Moyen de paiement';

  @override
  String get createdLabel => 'Créé';

  @override
  String get userInformationTitle => 'Informations utilisateur';

  @override
  String get fileTypeVideo => 'Vidéo';

  @override
  String get fileTypeImage => 'Image';

  @override
  String get fileTypeArchive => 'Archive';

  @override
  String get fileTypeFile => 'Fichier';

  @override
  String buyingSatsAmount(String sats) {
    return 'Achat de $sats sats';
  }

  @override
  String sellingSatsAmount(String sats) {
    return 'Vente de $sats sats';
  }

  @override
  String get viewOrderLink => 'Voir l\'ordre';

  @override
  String timeLeftLabel(String time) {
    return '$time restant';
  }

  @override
  String get invoiceNoLongerExpected =>
      'Cet ordre n\'attend plus de facture. Mise à jour de son statut…';

  @override
  String get invoiceAwaitingNode =>
      'Envoyée. Le nœud n\'a pas encore répondu ; vous serez redirigé vers la transaction dès qu\'il le fera.';

  @override
  String get invoiceAwaitingNodeLong =>
      'Toujours pas de réponse du nœud. Si la transaction n\'avance pas, renvoyez-la.';

  @override
  String get invoiceSubmitInFlight =>
      'Une facture pour cet ordre est déjà en cours d\'envoi. Attendez la réponse.';

  @override
  String get waitingForTradeAmount =>
      'En attente du montant de la transaction — veuillez réessayer sous peu.';

  @override
  String get fetchingTradeAmount =>
      'Récupération du montant de la transaction…';

  @override
  String get enterInvoiceManually => 'Saisir la facture manuellement';

  @override
  String get rangeAmountTakeAction => 'Prendre l\'ordre';

  @override
  String orderAmountOutOfRange(int min, int max) {
    return 'Le montant doit être compris entre $min et $max sats pour ce nœud Mostro';
  }

  @override
  String orderCurrencyNotAccepted(String currency) {
    return 'Ce nœud Mostro n\'accepte pas $currency. Choisissez une autre devise';
  }

  @override
  String orderAmountOutOfRangeFiat(int min, int max, String currency) {
    return 'Le montant doit être compris entre $min et $max $currency pour ce nœud Mostro';
  }

  @override
  String get priceTypeMarket => 'Marché';

  @override
  String get priceTypeFixed => 'Fixe';

  @override
  String get priceTypeInfoTooltip => 'Infos sur le type de prix';

  @override
  String get premiumSectionLabel => 'Prime';

  @override
  String get fixedPriceRangeNotAvailable =>
      'Le prix fixe n\'est pas disponible pour les ordres à fourchette. Désactivez la fourchette pour utiliser un prix fixe.';

  @override
  String get priceTypesDialogTitle => 'Types de prix';

  @override
  String get priceTypesDialogContent =>
      'Prix du marché : votre ordre suit le taux du marché, avec la prime ou la remise que vous fixez.\n\nPrix fixe : vous fixez le montant exact en sats ; il ne suit pas le marché.';

  @override
  String get newOrderTitle => 'Nouvel ordre';

  @override
  String get amountSectionSell => 'Combien vous vendez';

  @override
  String get amountSectionBuy => 'Combien vous achetez';

  @override
  String get amountModeSingle => 'Unique';

  @override
  String get amountModeRange => 'Fourchette';

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
      other: '$countString sélectionnés',
      one: '1 sélectionné',
      zero: 'aucun sélectionné',
    );
    return '$_temp0';
  }

  @override
  String get paymentMethodAdd => 'Ajouter';

  @override
  String get paymentMethodSearchHint => 'Rechercher un moyen';

  @override
  String get customPaymentMethodLabel => 'Moyen de paiement personnalisé';

  @override
  String get priceSectionTitle => 'Prix';

  @override
  String premiumSellAbove(String premium) {
    return 'Vous vendez $premium % au-dessus du prix du marché';
  }

  @override
  String premiumSellBelow(String premium) {
    return 'Vous vendez $premium % sous le marché';
  }

  @override
  String premiumBuyBelow(String premium) {
    return 'Vous payez $premium % de moins que le marché';
  }

  @override
  String premiumBuyAbove(String premium) {
    return 'Vous payez $premium % de plus';
  }

  @override
  String get premiumExactMarket => 'Prix du marché exact';

  @override
  String get fixedPriceNote =>
      'À prix fixe, l\'ordre ne suit pas le marché : le montant en sats reste tel que vous l\'écrivez.';

  @override
  String get previewHintNoAmount =>
      'Saisissez un montant et vous verrez ici à quoi ressemble l\'ordre.';

  @override
  String previewSellMarket(String amount, String premium, String active) {
    return 'Vous vendez des BTC pour $amount au prix du marché $premium$active';
  }

  @override
  String previewSellMarketExact(String amount, String active) {
    return 'Vous vendez des BTC pour $amount au prix du marché$active';
  }

  @override
  String previewBuyMarket(String amount, String premium, String active) {
    return 'Vous achetez des BTC pour $amount au prix du marché $premium$active';
  }

  @override
  String previewBuyMarketExact(String amount, String active) {
    return 'Vous achetez des BTC pour $amount au prix du marché$active';
  }

  @override
  String previewSellFixed(String sats, String amount, String active) {
    return 'Vous vendez $sats pour $amount à prix fixe$active';
  }

  @override
  String previewBuyFixed(String sats, String amount, String active) {
    return 'Vous achetez $sats pour $amount à prix fixe$active';
  }

  @override
  String previewActiveSuffix(String hours) {
    return ' · actif $hours';
  }

  @override
  String get publishOrder => 'Publier l\'ordre';

  @override
  String removePaymentMethod(String method) {
    return 'Retirer $method';
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
  String get paymentMethodsLabel => 'Moyens de paiement';

  @override
  String get customPaymentMethodHint => 'Moyen de paiement personnalisé…';

  @override
  String amountRangeError(String min, String max) {
    return 'Le montant doit être entre $min et $max';
  }

  @override
  String get enterAmountTitle => 'Saisir le montant';

  @override
  String minMaxRangeLabel(String min, String max, String currency) {
    return 'Min : $min – Max : $max $currency';
  }

  @override
  String get ratingFailed => 'Échec de l\'évaluation. Veuillez réessayer.';

  @override
  String get submitUppercaseButton => 'ENVOYER';

  @override
  String selectStarTooltip(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sélectionner $countString étoiles',
      one: 'Sélectionner 1 étoile',
    );
    return '$_temp0';
  }

  @override
  String get disputeDetailsTitle => 'Détails du litige';

  @override
  String get disputeIdLabel => 'ID du litige';

  @override
  String disputeReasonLabel(String reason) {
    return 'Raison : $reason';
  }

  @override
  String get solverLabel => 'Médiateur';

  @override
  String get serberoLabel => 'Serbero';

  @override
  String get disputeSerberoAssigned =>
      'Serbero, un assistant automatique, vous aide avec votre litige. Il vous posera quelques questions ici et transmettra le dossier à une personne si nécessaire.';

  @override
  String get disputeSolverTookOver => 'Un médiateur a repris votre litige.';

  @override
  String get disputeScreenTitle => 'Litige';

  @override
  String get filtersDialogTitle => 'Filtres';

  @override
  String get resetButton => 'Réinitialiser';

  @override
  String get currencyLabel => 'Devise';

  @override
  String get ratingLabel => 'Note';

  @override
  String get applyButton => 'Appliquer';

  @override
  String get successLabel => 'Succès';

  @override
  String get copyButton => 'Copier';

  @override
  String get shareButton => 'Partager';

  @override
  String sendSatsToAddress(String sats) {
    return 'Envoyez $sats sats à :';
  }

  @override
  String get changeButton => 'Modifier';

  @override
  String get unableToOpenNotification =>
      'Impossible d\'ouvrir les détails de la notification.';

  @override
  String get reasonBestPremium => 'Meilleure prime';

  @override
  String get reasonMostReputable => 'Plus réputé';

  @override
  String get marketPriceCaption => 'Prix du marché';

  @override

  String effectiveRateUsd(String rate, String currency) {
    return '~$rate $currency/USD';
  }

  @override
  String reputationTradesLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'transactions',
      one: 'transaction',
    );
    return '$_temp0';
  }

  @override
  String reputationDaysLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'jours',
      one: 'jour',
    );
    return '$_temp0';
  }

  @override
  String get sortNewest => 'Plus récentes';
