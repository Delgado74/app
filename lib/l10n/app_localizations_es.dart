// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Mostro';

  @override
  String get loading => 'Cargando…';

  @override
  String get actionFailedAnnouncement => 'Acción fallida';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get done => 'Listo';

  @override
  String get skip => 'Omitir';

  @override
  String get chatTimestampYesterday => 'Ayer';

  @override
  String get disputesEmptyState => 'Tus disputas aparecerán aquí';

  @override
  String get disputeAttachFile => 'Adjuntar archivo';

  @override
  String get disputeWriteMessageHint => 'Escribe un mensaje…';

  @override
  String get disputeSend => 'Enviar';

  @override
  String get orderDispute => 'Disputa de orden';

  @override
  String get disputeSolverAssigned =>
      'Un resolutor ha tomado tu disputa. Se pondrá en contacto contigo aquí en breve.';

  @override
  String get disputeChatClosed =>
      'Esta disputa ha sido resuelta. El chat está cerrado.';

  @override
  String get messageCopied => 'Copiado';

  @override
  String get disputeLoadError =>
      'No se pudieron cargar las disputas. Por favor, inténtalo de nuevo.';

  @override
  String get disputeSolverNotAssigned =>
      'Ningún resolutor ha tomado esta disputa todavía. Podrás escribir cuando alguno lo haga.';

  @override
  String get disputeNotFound => 'Disputa no encontrada.';

  @override
  String get disputeNotFoundForOrder =>
      'No se encontró ninguna disputa para esta orden.';

  @override
  String get disputeResolved => 'Resuelta';

  @override
  String get disputeSuccessfullyCompleted => 'Completado con éxito';

  @override
  String get disputeCoopCancelMessage =>
      'La orden fue cancelada cooperativamente. No se transfirieron fondos.';

  @override
  String orderLabel(String orderId) {
    return 'Orden $orderId';
  }

  @override
  String get disputeStatusClosed => 'Cerrada';

  @override
  String disputeWith(String role, String counterparty) {
    return 'Disputa con $role: $counterparty';
  }

  @override
  String get seller => 'Vendedor';

  @override
  String get buyer => 'Comprador';

  @override
  String get disputeStatusInitiated => 'Iniciada';

  @override
  String get disputeStatusInProgress => 'En progreso';

  @override
  String get disputeStatusResolved => 'Resuelta';

  @override
  String get disputeInProgress =>
      'Esta disputa está actualmente en progreso. Un resolutor está revisando tu caso.';

  @override
  String get disputeInstruction1 =>
      'Espera a que un resolutor tome tu disputa. Una vez que llegue, comparte cualquier evidencia relevante para ayudar a aclarar la situación.';

  @override
  String get disputeInstruction2 =>
      'La decisión final se tomará en base a la evidencia presentada.';

  @override
  String get disputeInstruction3 =>
      'Si no respondes, el sistema asumirá que no deseas cooperar y podrías perder la disputa.';

  @override
  String disputeOpenedByYouAgainstSeller(String counterparty) {
    return 'Abriste esta disputa contra el vendedor $counterparty, lee atentamente a continuación:';
  }

  @override
  String disputeOpenedByYouAgainstBuyer(String counterparty) {
    return 'Abriste esta disputa contra el comprador $counterparty, lee atentamente a continuación:';
  }

  @override
  String get disputeWaitingForAdmin => 'Esperando que se asigne un resolutor';

  @override
  String get disputeLostFundsToBuyer =>
      'El resolutor decidió la disputa a favor del comprador. Los sats fueron liberados al comprador.';

  @override
  String get disputeLostFundsToSeller =>
      'El resolutor canceló la orden y devolvió los sats al vendedor. No recibiste los sats.';

  @override
  String get walkthroughWelcomeTitle => 'Bitcoin P2P sin KYC';

  @override
  String get walkthroughWelcomeBody1 =>
      'Mostro es un exchange peer-to-peer que te permite comprar y vender Bitcoin con cualquier moneda y método de pago, sin KYC y sin entregar tus datos a nadie.';

  @override
  String get walkthroughWelcomeBody2 =>
      'Está construido sobre Nostr, lo que lo hace resistente a la censura. Nadie puede impedirte operar.';

  @override
  String get walkthroughPrivacyTitle => 'Privacidad por defecto';

  @override
  String get walkthroughPrivacyBody1 =>
      'Mostro genera una identidad nueva para cada operación, así nadie puede vincular unas con otras.';

  @override
  String get walkthroughPrivacyBody2 =>
      'También puedes decidir cuánta privacidad quieres:';

  @override
  String get walkthroughReputationModeName => 'Modo reputación';

  @override
  String get walkthroughReputationModeBody =>
      'Permite que otros vean tus operaciones exitosas y tu nivel de confianza.';

  @override
  String get walkthroughFullPrivacyModeName => 'Modo privacidad total';

  @override
  String get walkthroughFullPrivacyModeBody =>
      'No se construye reputación, pero tu actividad es completamente anónima.';

  @override
  String get walkthroughPrivacyFooter =>
      'Cambia de modo cuando quieras desde la pantalla de Cuenta. Ahí también deberías guardar tus palabras secretas: son la única forma de recuperar tu cuenta.';

  @override
  String get walkthroughHeldTitle => 'Seguridad en cada paso';

  @override
  String get walkthroughHeldBody1 =>
      'Los sats del vendedor quedan bloqueados hasta que termina la operación. Esto protege a ambas partes.';

  @override
  String get walkthroughHeldBody2 =>
      'La aplicación también está pensada para que cualquier persona la use de forma intuitiva y sencilla.';

  @override
  String get walkthroughChatTitle => 'Chat totalmente cifrado';

  @override
  String get walkthroughChatBody1 =>
      'Cada operación tiene su propio chat privado, cifrado de extremo a extremo. Solo tú y tu contraparte pueden leerlo, salvo que uno de los dos comparta su clave.';

  @override
  String get walkthroughChatBody2 =>
      'En caso de disputa, compartir esa clave con un resolutor le permite leer el chat y ayudar a solucionarla.';

  @override
  String get walkthroughTakeTitle => 'Toma una orden';

  @override
  String get walkthroughTakeBody1 =>
      'Explora el libro de órdenes, elige una orden que te convenga y sigue la operación paso a paso.';

  @override
  String get walkthroughTakeBody2 =>
      'Podrás ver el perfil de tu contraparte, chatear de forma segura y completar la operación sin complicaciones.';

  @override
  String get walkthroughMakeTitle => '¿No encuentras lo que necesitas?';

  @override
  String get walkthroughMakeBody1 =>
      'También puedes crear tu propia orden y esperar a que alguien la tome.';

  @override
  String get walkthroughMakeBody2 =>
      'Indica el monto y tu método de pago preferido. Mostro se encarga del resto.';

  @override
  String get walkthroughNext => 'Siguiente';

  @override
  String walkthroughStepCounter(int current, int total) {
    return '$current / $total';
  }

  @override
  String walkthroughStepSemantics(int current, int total) {
    return 'Paso $current de $total';
  }

  @override
  String get tabBuyBtc => 'Comprar BTC';

  @override
  String get tabSellBtc => 'Vender BTC';

  @override
  String get filterButtonLabel => 'Filtrar';

  @override
  String filtersActiveCount(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString filtros activos',
      one: '1 filtro activo',
    );
    return '$_temp0';
  }

  @override
  String get noOrdersAvailable => 'No hay órdenes disponibles';

  @override
  String get justNow => 'ahora mismo';

  @override
  String minutesAgo(int m) {
    return 'hace ${m}m';
  }

  @override
  String hoursAgo(int h) {
    return 'hace ${h}h';
  }

  @override
  String daysAgo(int d) {
    return 'hace ${d}d';
  }

  @override
  String get invoiceRejected =>
      'El nodo rechazó esta factura. Revisa su monto y su expiración y agrega una nueva.';

  @override
  String get invoiceCopied => 'Factura copiada';

  @override
  String get submitButtonLabel => 'Enviar';

  @override
  String get orderAlreadyTaken => 'La orden ya fue tomada';

  @override
  String get nodeProtocolUnsupported =>
      'Este nodo Mostro usa una versión del protocolo que esta app no soporta. Elige otro nodo en Configuración o busca una actualización de la app';

  @override
  String get nodeCapabilitiesUnknown =>
      'Aún se está comprobando qué soporta el nodo Mostro seleccionado. Inténtalo de nuevo en un momento';

  @override
  String get tradeOnOtherNode =>
      'Esta operación pertenece a otro nodo Mostro. Cambia a ese nodo para continuar con ella';

  @override
  String get mostroMaintenanceMode =>
      'El nodo Mostro al que estás conectado está en mantenimiento. Inténtalo más tarde o conéctate a otro nodo Mostro desde Configuración';

  @override
  String get storageUnavailable =>
      'La app no puede crear ni tomar órdenes mientras su base de datos local no esté disponible. Reinicia la app e inténtalo de nuevo';

  @override
  String get rangeOrderWithSats =>
      'Una orden de rango no puede tener un monto fijo en sats: se cotiza a precio de mercado al tomarla.';

  @override
  String get orderIdCopied => 'ID de orden copiado';

  @override
  String get comingSoonMessage => 'Próximamente';

  @override
  String get tradeStatusCompleted => 'Completada';

  @override
  String get tradeStatusCancelled => 'Cancelada';

  @override
  String get tradeStatusDisputed => 'En disputa';

  @override
  String get accountScreenTitle => 'Cuenta';

  @override
  String get secretWordsTitle => 'Palabras secretas';

  @override
  String get privacyCardTitle => 'Privacidad';

  @override
  String get reputationMode => 'Modo reputación';

  @override
  String get reputationModeSubtitle =>
      'Tus operaciones suman a tu reputación pública';

  @override
  String get fullPrivacyMode => 'Modo privacidad total';

  @override
  String get fullPrivacyModeSubtitle =>
      'Cada operación usa una identidad nueva, sin reputación';

  @override
  String get generateNewUserButton => 'Generar nuevo usuario';

  @override
  String get importMostroUserButton => 'Importar usuario de Mostro';

  @override
  String get generateNewUserDialogTitle => '¿Generar nuevo usuario?';

  @override
  String get generateNewUserDialogContent =>
      'Esto creará una identidad completamente nueva. Tus palabras secretas actuales dejarán de funcionar — asegúrate de tenerlas respaldadas antes de continuar.';

  @override
  String get continueButtonLabel => 'Continuar';

  @override
  String get importMnemonicDialogTitle => 'Importar palabras secretas';

  @override
  String get importMnemonicHintText => 'Ingresa tus 12 palabras secretas';

  @override
  String get importButtonLabel => 'Importar';

  @override
  String get refreshUserDialogTitle => '¿Actualizar usuario?';

  @override
  String get refreshUserDialogContent =>
      'Esto volverá a obtener tus operaciones y órdenes desde la instancia de Mostro. Úsalo si crees que tus datos están desincronizados o faltan órdenes.';

  @override
  String get hideButtonLabel => 'Ocultar';

  @override
  String get showWordsButton => 'Mostrar palabras';

  @override
  String get settingsScreenTitle => 'Configuración';

  @override
  String get languageSettingTitle => 'Idioma';

  @override
  String get appearanceSettingTitle => 'Apariencia';

  @override
  String get appearanceDialogTitle => 'Apariencia';

  @override
  String get allCurrencies => 'Todas las monedas';

  @override
  String get lightningAddressSettingTitle => 'Dirección Lightning';

  @override
  String get nwcWalletSettingTitle => 'Billetera NWC';

  @override
  String get relaysSettingTitle => 'Relays';

  @override
  String get pushNotificationsSettingTitle => 'Notificaciones push';

  @override
  String get logReportSettingTitle => 'Informe de registros';

  @override
  String get mostroNodeSettingTitle => 'Nodo Mostro';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeSystemDefault => 'Predeterminado del sistema';

  @override
  String get lightningAddressDialogTitle => 'Dirección Lightning';

  @override
  String get lightningAddressHintText => 'usuario@dominio.com';

  @override
  String get invalidLightningAddressFormat =>
      'Debe tener el formato usuario@dominio';

  @override
  String get clearButtonLabel => 'Limpiar';

  @override
  String get saveButtonLabel => 'Guardar';

  @override
  String get scanQrCodeTitle => 'Escanear código QR';

  @override
  String get selectLanguageTitle => 'Seleccionar idioma';

  @override
  String get selectCurrencyDialogTitle => 'Seleccionar moneda';

  @override
  String get addRelayDialogTitle => 'Agregar relay';

  @override
  String get addButtonLabel => 'Agregar';

  @override
  String get relayHintText => 'wss://relay.example.com';

  @override
  String get relayErrorMustStartWithWss => 'Debe comenzar con wss://';

  @override
  String get relayErrorUrlTooShort => 'La URL es demasiado corta';

  @override
  String get relayErrorDuplicate => 'El relay ya está en la lista';

  @override
  String get pasteQrCodeHeading => 'Pegar contenido del código QR';

  @override
  String get pasteButtonLabel => 'Pegar';

  @override
  String get clipboardEmptyError => 'El portapapeles está vacío';

  @override
  String get enterValueError => 'Por favor ingresa un valor';

  @override
  String get trustedBadgeLabel => 'De confianza';

  @override
  String get confirmButtonLabel => 'Confirmar';

  @override
  String get selectMostroNode => 'Elegir nodo';

  @override
  String get addCustomNode => 'Agregar nodo propio';

  @override
  String get nodePubkeyFieldLabel => 'Clave pública';

  @override
  String get nodePubkeyFieldHint => 'Hex de 64 caracteres o npub…';

  @override
  String get nodeNameOptionalLabel => 'Nombre (opcional)';

  @override
  String get invalidPubkeyFormat =>
      'Ingresa una clave pública válida (hex de 64 caracteres o npub)';

  @override
  String get privateKeyNotAllowed =>
      'Eso es una clave privada — nunca la compartas. Ingresa la clave pública del nodo';

  @override
  String get nodeAlreadyExists => 'Este nodo ya está en la lista';

  @override
  String get nodeAddedSuccess => 'Nodo agregado';

  @override
  String nodeSwitchedSuccess(String nodeName) {
    return 'Ahora usas $nodeName';
  }

  @override
  String get errorSwitchingNode => 'No se pudo cambiar de nodo';

  @override
  String get cannotRemoveActiveNode =>
      'El nodo activo no se puede eliminar — cambia primero a otro nodo';

  @override
  String get deleteCustomNodeTitle => 'Eliminar nodo';

  @override
  String get deleteCustomNodeMessage =>
      '¿Eliminar este nodo personalizado de tu lista?';

  @override
  String get deleteCustomNodeConfirm => 'Eliminar';

  @override
  String get nodeRemovedSuccess => 'Nodo eliminado';

  @override
  String get nodeStorageUnavailable =>
      'La base de datos local no está lista. Reinicia la app e inténtalo de nuevo';

  @override
  String nodeSelectorSubtitle(String code) {
    return 'Órdenes y monedas de $code, tu moneda';
  }

  @override
  String get nodeSelectorSubtitleNoCurrency => 'Órdenes abiertas en cada nodo';

  @override
  String nodeMissingCurrencyChip(String code) {
    return 'SIN $code';
  }

  @override
  String get nodeOrdersNowLabel => 'órdenes ahora';

  @override
  String get nodeNoOrdersLabel => 'sin órdenes';

  @override
  String nodeOrdersInCurrency(int count, String code) {
    return '· $count en $code';
  }

  @override
  String get nodeFeeLabel => 'comisión';

  @override
  String get nodeFeeTooltip =>
      'Mostro reparte la comisión entre las dos partes.';

  @override
  String get nodePerTradeLabel => 'por operación';

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
    return 'Depósito $pct%';
  }

  @override
  String get nodeBondNone => 'Sin depósito';

  @override
  String nodeStatusOnline(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString órdenes',
      one: '1 orden',
    );
    return 'En línea · $_temp0';
  }

  @override
  String get nodeStatusNoUsefulOrders => 'Sin órdenes en tus monedas';

  @override
  String nodeStatusUnreachable(String ago) {
    return 'No responde · última señal $ago';
  }

  @override
  String get nodeStatusUnreachableNoSignal => 'No responde';

  @override
  String get nodeChoiceSubtitle =>
      'Selecciona el nodo Mostro en el que quieres operar';

  @override
  String get nodeOperatorDisclaimer =>
      'El equipo de desarrollo de Mostro no se hace responsable del uso que los operadores de nodos hagan de la plataforma. Cada operador controla su propio nodo Mostro y es el único responsable de sus acciones. Al usar Mostro, aceptas la plena responsabilidad de tus operaciones y reconoces que el equipo de desarrollo no tiene control sobre los operadores de nodos individuales.';

  @override
  String get nodeChoiceConfirm => 'Usar este nodo';

  @override
  String get nodeChoiceSaveFailed =>
      'No se pudo guardar tu elección. Inténtalo de nuevo.';

  @override
  String get nodeVerifyKeyWarning =>
      'Verifica la clave con el operador. Un nodo falso puede ver tus órdenes.';

  @override
  String get nodeInvalidPubkeyShort => 'Esta no es una clave pública válida.';

  @override
  String get nodeNameFieldHint => 'Mostro local';

  @override
  String get nodePubkeyCopied => 'Clave copiada';

  @override
  String get nodeNotSelectableOffline => 'Este nodo no responde';

  @override
  String get nodeStatsLoading => 'Cargando datos del nodo';

  @override
  String get nodeSwitchConfirmTitle => '¿Cambiar de nodo?';

  @override
  String nodeSwitchConfirmBody(String currentNode, String newNode) {
    return 'Tienes una operación en curso en $currentNode. Sigue ahí; el libro pasará a mostrar $newNode.';
  }

  @override
  String get nodeSwitchConfirmAction => 'Cambiar de nodo';

  @override
  String get nodeTradesCheckFailed =>
      'No se pudieron consultar tus operaciones. Inténtalo de nuevo.';

  @override
  String get notificationsScreenTitle => 'Notificaciones';

  @override
  String get markAllAsReadMenuItem => 'Marcar todo como leído';

  @override
  String get clearAllMenuItem => 'Borrar todo';

  @override
  String get youMustBackUpYourAccount =>
      'Debes hacer una copia de seguridad de tu cuenta';

  @override
  String get tapToViewAndSaveSecretWords =>
      'Toca para ver y guardar tus palabras secretas.';

  @override
  String get noNotifications => 'Sin notificaciones';

  @override
  String get markAsRead => 'Marcar como leído';

  @override
  String get deleteNotificationLabel => 'Eliminar';

  @override
  String get rateScreenHeader => 'CALIFICAR';

  @override
  String get successfulOrder => 'Orden exitosa';

  @override
  String get closeRatingButton => 'CERRAR';

  @override
  String get aboutScreenTitle => 'Acerca de';

  @override
  String get linkCopiedToClipboard => 'Enlace copiado al portapapeles';

  @override
  String get pubkeyLabel => 'Clave pública';

  @override
  String get relaysLabel => 'Relays';

  @override
  String get footerTagline => 'Código abierto. Sin custodia. Privado.';

  @override
  String get drawerTitle => 'Mostro';

  @override
  String get drawerTagline => 'Exchange P2P';

  @override
  String get drawerStageBadge => 'Beta';

  @override
  String drawerVersion(String version) {
    return 'Versión $version';
  }

  @override
  String get drawerAccountMenuItem => 'Cuenta';

  @override
  String get drawerSettingsMenuItem => 'Configuración';

  @override
  String get drawerAboutMenuItem => 'Acerca de';

  @override
  String get navOrderBook => 'Libro de órdenes';

  @override
  String get navMyTrades => 'Mis operaciones';

  @override
  String get navChat => 'Chat';

  @override
  String get loadingOrders => 'Cargando órdenes…';

  @override
  String get errorLoadingOrders =>
      'No se pudieron cargar las órdenes. Comprueba tu conexión.';

  @override
  String get retry => 'Reintentar';

  @override
  String disableRelayLabel(String url) {
    return 'Desactivar relay $url';
  }

  @override
  String enableRelayLabel(String url) {
    return 'Activar relay $url';
  }

  @override
  String get removeRelayTooltip => 'Eliminar relay';

  @override
  String get relayAddFailed => 'No se pudo agregar el relay';

  @override
  String get relayRemoveFailed => 'Error al eliminar el relay';

  @override
  String get backupRitualSecondFailureMessage =>
      'Eso fue incorrecto de nuevo. Por favor revisa y respalda tus palabras secretas, luego verifica desde el principio.';

  @override
  String get cancelTradeDialogTitle => '¿Cancelar operación?';

  @override
  String get cancelTradeDialogContent =>
      'Se solicita una cancelación cooperativa. La contraparte también debe aceptar para que la operación quede cancelada.';

  @override
  String get cancelTradeDialogContentNotStarted =>
      'La operación aún no ha comenzado, así que se cancela de inmediato. No hace falta que la contraparte lo acepte.';

  @override
  String get cancelTradeDialogContentMaybeStarted =>
      'Si la operación aún no ha comenzado, se cancela de inmediato. Si ya comenzó, la contraparte también debe aceptar.';

  @override
  String get noButtonLabel => 'No';

  @override
  String get yesButtonLabel => 'Sí';

  @override
  String get yesCancelButtonLabel => 'Sí, cancelar';

  @override
  String get cancelRequestSent => 'Solicitud de cancelación enviada';

  @override
  String get cancelRequestFailed =>
      'No se pudo cancelar. Por favor, inténtalo de nuevo.';

  @override
  String get tradeCardCancelRequestedByMeTitle => 'Cancelación solicitada';

  @override
  String get tradeCardCancelRequestedByMeMessage =>
      'Pediste cancelar esta operación. Sigue abierta hasta que la contraparte también cancele. Si no responde, puedes abrir una disputa.';

  @override
  String get tradeCardCancelRequestedByPeerTitle =>
      'La contraparte quiere cancelar';

  @override
  String get tradeCardCancelRequestedByPeerMessage =>
      'Pidió cancelar esta operación. Acepta para terminarla sin mover fondos, o sigue con la operación.';

  @override
  String get tradeCancelRequestedByMeNotice =>
      'Pediste cancelar esta operación. Sigue abierta hasta que la contraparte también cancele. Si no responde, puedes abrir una disputa.';

  @override
  String get tradeCancelRequestedByPeerNotice =>
      'La contraparte pidió cancelar esta operación. Acepta para terminarla sin mover fondos, o sigue con la operación.';

  @override
  String get acceptCancelButton => 'Aceptar cancelación';

  @override
  String get cancelTradeDialogContentAccept =>
      'La contraparte pidió cancelar. Si cancelas ahora, la operación termina para ambos y no se mueven fondos.';

  @override
  String get fiatSentFailed =>
      'Error al marcar el pago como enviado. Por favor, inténtalo de nuevo.';

  @override
  String get releaseFailed =>
      'Error al liberar. Por favor, inténtalo de nuevo.';

  @override
  String get releasePendingLabel => 'Liberando… esperando al nodo';

  @override
  String get releaseSentNotice =>
      'Liberación enviada. El nodo puede tardar hasta un minuto en confirmarla.';

  @override
  String get releaseUnconfirmedNotice =>
      'El nodo todavía no confirmó la liberación. Si la orden no se actualiza, puedes liberar de nuevo.';

  @override
  String get cancelTradeButton => 'Cancelar operación';

  @override
  String get payHoldInvoiceButton => 'Pagar factura';

  @override
  String get openDisputeButton => 'Abrir disputa';

  @override
  String get releaseSatsButton => 'Liberar sats';

  @override
  String get confirmReleaseSatsButton => 'Confirmar y liberar sats';

  @override
  String get shareOrderButton => 'Compartir orden';

  @override
  String get orderPillYouAreSelling => 'ESTÁS VENDIENDO';

  @override
  String get orderPillYouAreBuying => 'ESTÁS COMPRANDO';

  @override
  String get myOrderSellTitle => 'Tu orden de venta';

  @override
  String get myOrderBuyTitle => 'Tu orden de compra';

  @override
  String get cancelOrderFailed =>
      'No se pudo cancelar la orden. Por favor, inténtalo de nuevo.';

  @override
  String get closeButtonLabel => 'Cerrar';

  @override
  String get copyButtonLabel => 'Copiar';

  @override
  String get orderStatusWaitingForTaker => 'Esperando un tomador';

  @override
  String get orderStatusInProgress => 'En progreso';

  @override
  String get orderStatusExpired => 'Expirada';

  @override
  String get copyOrderIdTooltip => 'Copiar ID de orden';

  @override
  String get orderNotFoundTitle => 'Orden no encontrada';

  @override
  String get orderNotFoundMessage => 'Esta orden ya no está disponible.';

  @override
  String get orderCancelledSuccess => 'Orden cancelada exitosamente.';

  @override
  String get aboutDocumentationTitle => 'Documentación';

  @override
  String get aboutMostroNodeTitle => 'Nodo Mostro';

  @override
  String get aboutVersionLabel => 'Versión';

  @override
  String get aboutCommitHashLabel => 'Hash del commit';

  @override
  String get aboutLicenseLabel => 'Licencia';

  @override
  String get aboutLicenseName => 'AGPLv3+';

  @override
  String get aboutGithubRepoName => 'MostroP2P/app';

  @override
  String get aboutCopiedToClipboard => 'Copiado al portapapeles';

  @override
  String get aboutLicenseDialogTitle =>
      'Licencia Pública General Affero de GNU v3';

  @override
  String get aboutNodeLoadingText => 'Cargando información del nodo…';

  @override
  String get aboutNodeUnavailable => 'Información del nodo no disponible';

  @override
  String get aboutNodeRetry => 'Reintentar';

  @override
  String get aboutLightningNetworkSection => 'Red Lightning';

  @override
  String get aboutFiatCurrenciesLabel => 'Monedas fiat';

  @override
  String get aboutPriceSourceLabel => 'Fuente';

  @override
  String get aboutPriceSection => 'Precio';

  @override
  String get aboutPriceSourcesFootnote =>
      'Las fuentes de precio son los proveedores de las tasas que el nodo publica ahora; uno que falló o se descartó no aparece.';

  @override
  String get aboutMostroVersionLabel => 'Versión de Mostro';

  @override
  String get aboutMostroCommitLabel => 'Commit de Mostro';

  @override
  String get aboutHoldInvoiceExpLabel =>
      'Vencimiento de la factura de retención';

  @override
  String get aboutHoldInvoiceCltvLabel => 'CLTV de la factura de retención';

  @override
  String get aboutInvoiceExpWindowLabel => 'Ventana de vencimiento de factura';

  @override
  String get aboutProofOfWorkLabel => 'Prueba de trabajo';

  @override
  String get aboutMaxOrdersPerResponseLabel => 'Máx. órdenes por respuesta';

  @override
  String get aboutLndVersionLabel => 'Versión de LND';

  @override
  String get aboutSupportedChainsLabel => 'Cadenas soportadas';

  @override
  String get aboutSupportedNetworksLabel => 'Redes soportadas';

  @override
  String get aboutSatoshisSuffix => 'Satoshis';

  @override
  String get aboutBlocksSuffix => 'bloques';

  @override
  String get aboutFiatCurrenciesAll => 'Todas';

  @override
  String get aboutAntiAbuseBondSection => 'Depósito antiabuso';

  @override
  String get aboutBondEnabledValue => 'Habilitado';

  @override
  String get aboutBondDisabledValue => 'Deshabilitado';

  @override
  String get aboutBondUnsupportedValue => 'No compatible';

  @override
  String get aboutBondStatusLabel => 'Estado del depósito';

  @override
  String get aboutBondAppliesToLabel => 'Se aplica a';

  @override
  String get aboutBondAppliesToTakers => 'Quien toma la orden';

  @override
  String get aboutBondAppliesToMakers => 'Quien crea la orden';

  @override
  String get aboutBondAppliesToBoth => 'Ambas partes';

  @override
  String get aboutBondAmountLabel => 'Monto del depósito';

  @override
  String get aboutBondBaseAmountLabel => 'Depósito mínimo';

  @override
  String get aboutBondNodeShareLabel => 'Parte del nodo al confiscar';

  @override
  String get aboutBondSlashOnTimeoutLabel => 'Confiscar por tiempo de espera';

  @override
  String get aboutBondClaimWindowLabel => 'Plazo para reclamar el pago';

  @override
  String aboutBondClaimWindowValue(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString días',
      one: '$countString día',
    );
    return '$_temp0';
  }

  @override
  String get openDisputeFailed =>
      'No se pudo abrir la disputa. Por favor, inténtalo de nuevo.';

  @override
  String get openDisputeTitle => 'Abrir disputa';

  @override
  String get openDisputeConfirmation =>
      '¿Seguro que quieres abrir una disputa? Esto escala la operación a un resolutor y no se puede deshacer.';

  @override
  String get disputeAlreadyOpen =>
      'Ya hay una disputa abierta para esta operación.';

  @override
  String get tradeNotDisputable =>
      'Solo se puede abrir una disputa cuando los fondos ya están bloqueados para esta operación.';

  @override
  String get tradeWaitingInvoiceBuyerInstruction =>
      'Envía tu factura Lightning para que el vendedor pueda bloquear los fondos.';

  @override
  String get tradeWaitingInvoiceSellerInstruction =>
      'Esperando a que el comprador envíe su factura Lightning.';

  @override
  String get tradeWaitingPaymentSellerInstruction =>
      'Paga la factura para bloquear los fondos e iniciar la operación.';

  @override
  String get tradeLoadError => 'Ocurrió un error al cargar la operación.';

  @override
  String get tradeWaitingForHoldInvoice => 'Esperando la factura…';

  @override
  String get shareButtonLabel => 'Compartir';

  @override
  String get shareFailed => 'No se pudo compartir la factura';

  @override
  String get waitingForPaymentConfirmation => 'Esperando confirmación de pago…';

  @override
  String get orderNoLongerActive => 'Esta orden ya no está activa';

  @override
  String get tradeNoLongerYours => 'Ya no participas en esta operación';

  @override
  String get sessionTimeoutMessage =>
      'No hubo respuesta, verifica tu conexión e inténtalo más tarde';

  @override
  String get noRelayAcceptedMessage =>
      'Ningún relay aceptó tu mensaje. Revisa tus relays en Configuración e inténtalo de nuevo';

  @override
  String get noIdentityFoundMessage =>
      'No se encontró ninguna identidad — intenta reiniciar la app.';

  @override
  String get failedToLoadSecretWordsMessage =>
      'No se pudieron cargar las palabras secretas. Inténtalo de nuevo.';

  @override
  String get privacyModesInfoTitle => 'Modos de privacidad';

  @override
  String get privacyModesInfoContent =>
      'El modo reputación permite que otros vean tus operaciones exitosas.\n\nEl modo privacidad total mantiene tu actividad completamente anónima — no se construye reputación.';

  @override
  String get failedToGenerateIdentityMessage =>
      'No se pudo generar la identidad. Inténtalo de nuevo.';

  @override
  String get pendingWipeBannerTitle =>
      'Los datos del usuario anterior siguen en este dispositivo';

  @override
  String get pendingWipeBannerBody =>
      'Al eliminar la identidad anterior no se pudieron borrar sus operaciones y chats de este dispositivo. La app lo reintentará la próxima vez que se genere o importe un nuevo usuario.';

  @override
  String get pendingWipeBlockedMessage =>
      'No se pudieron borrar de este dispositivo los datos del usuario anterior, así que no se configuró el nuevo usuario y se mantuvo tu usuario actual. Inténtalo de nuevo.';

  @override
  String get wipeNotRecordedMessage =>
      'No se pudo eliminar el usuario actual de forma segura, así que no se cambió nada. Inténtalo de nuevo.';

  @override
  String get identitySwapStorageUnavailableMessage =>
      'El almacenamiento del dispositivo no está disponible ahora mismo, así que se mantuvo el usuario actual y no se cambió nada. Reinicia la app e inténtalo de nuevo.';

  @override
  String get identitySwapPreviousNotReloadedMessage =>
      'No se configuró el nuevo usuario, y el usuario actual no se pudo restaurar del todo. Reinicia la app para volver a cargarlo.';

  @override
  String get invalidMnemonicMessage =>
      'Palabras secretas inválidas. Revisa tus palabras e inténtalo de nuevo.';

  @override
  String get enterValidMnemonicError => 'Ingresa tus 12 palabras secretas.';

  @override
  String get orderBookRefreshedMessage => 'Libro de órdenes actualizado';

  @override
  String get refreshFailedMessage => 'Error al actualizar';

  @override
  String get refreshButtonLabel => 'Actualizar';

  @override
  String get okButtonLabel => 'Aceptar';

  @override
  String get moreInformationTooltip => 'Más información';

  @override
  String get backedUpBadgeLabel => 'Respaldadas';

  @override
  String get backupBannerTitle => 'Asegura tu reputación';

  @override
  String get backupBannerSubtitle =>
      'Respalda tus 12 palabras — toma 60 segundos.';

  @override
  String get failedToSaveBackupStatusMessage =>
      'No se pudo guardar el estado del respaldo. Inténtalo de nuevo.';

  @override
  String get backupRitualStep1Title => 'Paso 1 de 3 · Anota tus palabras';

  @override
  String get backupRitualStep2Title => 'Paso 2 de 3 · Verificar';

  @override
  String get backupRitualStep3Title => 'Paso 3 de 3 · Listo';

  @override
  String get backupRitualWarningTitle => 'Anótalas en papel. ';

  @override
  String get backupRitualWarningBody =>
      'No las guardes en fotos, capturas ni en la nube — cualquiera con estas 12 palabras puede robar tu reputación.';

  @override
  String get wordsHiddenOnLeaveNote =>
      'Se ocultarán cuando salgas de esta pantalla';

  @override
  String get wroteThemDownVerifyButton => 'Las anoté — verificar';

  @override
  String get tapCorrectWordsTitle => 'Toca las palabras correctas';

  @override
  String get verifyInstructionsBody =>
      'Te pedimos 3 al azar. Si las aciertas, sabemos que están bien anotadas.';

  @override
  String optionsForWordLabel(int number) {
    return 'OPCIONES PARA LA PALABRA #$number';
  }

  @override
  String get wrongPickMessage => 'Casi — revisa tu papel e inténtalo de nuevo.';

  @override
  String get allWordsCorrectMessage => 'Las 3 palabras correctas';

  @override
  String get reviewWordsButton => 'Ver palabras';

  @override
  String get accountBackedUpTitle => 'Tu cuenta está respaldada';

  @override
  String get accountBackedUpBody =>
      'Tu reputación está a salvo. Si alguna vez pierdes tu teléfono, restaura tu cuenta con tus 12 palabras.';

  @override
  String wordNumberLabel(int number) {
    return 'Palabra #$number';
  }

  @override
  String get backupTriggerBody =>
      'Tu reputación vive en una clave que solo tú posees. Si pierdes tu teléfono, pierdes esa reputación — ';

  @override
  String get backupTriggerBodyHighlight => 'respáldala en 60 segundos.';

  @override
  String get backupStepWriteDown => 'Anota tus 12 palabras en papel';

  @override
  String get backupStepVerifyRandom => 'Te pedimos 3 al azar para confirmar';

  @override
  String get backupStepSecured => 'Listo — tu cuenta está protegida';

  @override
  String get backupNowButton => 'Respaldar ahora';

  @override
  String get backupLaterButton => 'Lo haré luego';

  @override
  String get nwcConnectionFailedMessage =>
      'La conexión falló. Revisa tu URI de NWC e inténtalo de nuevo.';

  @override
  String get clipboardInvalidNwcUriMessage =>
      'El portapapeles no contiene una URI de NWC válida.';

  @override
  String get scanQrButtonLabel => 'Escanear QR';

  @override
  String get connectButtonLabel => 'Conectar';

  @override
  String get walletDisconnectedMessage => 'Billetera desconectada';

  @override
  String get relayLabel => 'Relay';

  @override
  String get disconnectButtonLabel => 'Desconectar';

  @override
  String relaysMoreSuffix(int count) {
    return '(+$count más)';
  }

  @override
  String get chooseNotificationEventsSubtitle =>
      'Elige qué eventos muestran una notificación en la app.';

  @override
  String get notifTradeUpdatesTitle => 'Actualizaciones de operaciones';

  @override
  String get notifTradeUpdatesSubtitle =>
      'Cambios de estado en tus operaciones activas';

  @override
  String get notifNewMessagesTitle => 'Nuevos mensajes';

  @override
  String get notifNewMessagesSubtitle => 'Mensajes de tu contraparte';

  @override
  String get notifPaymentAlertsTitle => 'Alertas de pago';

  @override
  String get notifPaymentAlertsSubtitle =>
      'Confirmaciones y fallos de pagos Lightning';

  @override
  String get notifDisputeUpdatesTitle => 'Actualizaciones de disputas';

  @override
  String get notifDisputeUpdatesSubtitle =>
      'Acciones de los resolutores y resoluciones de disputas';

  @override
  String get notifAnnouncementsTitle => 'Anuncios';

  @override
  String get notifAnnouncementsSubtitle =>
      'Versiones, caídas y cambios de relays, firmados por el proyecto Mostro';

  @override
  String get announcementsGroupSubtitle =>
      'Los anuncios se leen de los relays y nunca se responden: no se envía nada sobre ti.';

  @override
  String get announcementLevelInfo => 'Anuncio';

  @override
  String get announcementLevelWarning => 'Aviso';

  @override
  String get announcementLevelCritical => 'Actualización de seguridad';

  @override
  String get announcementOpenLink => 'Abrir enlace';

  @override
  String get notificationsBellCritical =>
      'Notificaciones, hay una actualización de seguridad sin leer';

  @override
  String get searchCurrenciesHint => 'Buscar monedas…';

  @override
  String get noCurrenciesFoundMessage => 'No se encontraron monedas';

  @override
  String get shareLogsTooltip => 'Compartir registros';

  @override
  String get noLogsToShareTooltip => 'No hay registros para compartir';

  @override
  String get noLogEntriesMessage => 'No hay entradas de registro';

  @override
  String get failedToShareLogsMessage =>
      'No se pudieron compartir los registros';

  @override
  String get logReportShareHeading => 'Informe de registros de Mostro';

  @override
  String get tradeFilterAll => 'Todos';

  @override
  String get tradeFilterPending => 'Pendiente';

  @override
  String get tradeFilterWaitingInvoice => 'Esperando factura';

  @override
  String get tradeFilterWaitingPayment => 'Esperando pago';

  @override
  String get tradeFilterActive => 'Activo';

  @override
  String get tradeFilterFiatSent => 'Fiat enviado';

  @override
  String get tradeFilterSuccess => 'Exitoso';

  @override
  String get tradeFilterCanceled => 'Cancelado';

  @override
  String get tradeFilterDispute => 'Disputa';

  @override
  String get menuTooltip => 'Menú';

  @override
  String get noTradesTitle => 'Sin operaciones';

  @override
  String get noTradesSubtitle =>
      'Tus operaciones activas y completadas aparecerán aquí.';

  @override
  String get couldNotLoadTradesMessage =>
      'No se pudieron cargar las operaciones';

  @override
  String get sellingBitcoin => 'Vendiendo Bitcoin';

  @override
  String get buyingBitcoin => 'Comprando Bitcoin';

  @override
  String get tradeInstructionActiveBuyer =>
      'Una vez que hayas enviado el dinero, márcalo abajo. Abre una disputa solo si el vendedor deja de responder.';

  @override
  String get tradeInstructionFiatSentBuyer =>
      'Pago marcado como enviado. Esperando que el vendedor confirme la recepción y libere tus sats.';

  @override
  String get tradeInstructionActiveSeller =>
      'Contacta al comprador con las instrucciones de pago a través del chat de arriba.';

  @override
  String get tradeInstructionFiatSentSeller =>
      'El comprador confirmó que envió el pago. Una vez que verifiques la recepción, libera los sats.';

  @override
  String get tradeInstructionDisputed =>
      'Se asignó un resolutor de disputas. Se pondrá en contacto contigo a través de la app.';

  @override
  String get tradeInstructionPending =>
      'Tu orden está publicada y esperando a que una contraparte la tome. Puedes cancelarla en cualquier momento.';

  @override
  String get tradeInstructionCancelled =>
      'Esta operación fue cancelada. No se intercambiaron fondos.';

  @override
  String get tradeInstructionInProgress => 'Operación en curso.';

  @override
  String get theAgreedAmount => 'el monto acordado';

  @override
  String get tradeHeadlinePending => 'Esperando a que alguien tome tu orden';

  @override
  String get tradeHeadlineInProgress => 'Se está preparando la operación';

  @override
  String get tradeHeadlineWaitingInvoiceBuyer =>
      'Comparte una factura Lightning para recibir tus sats';

  @override
  String get tradeHeadlineWaitingInvoiceSeller =>
      'Esperando a que el comprador comparta una factura';

  @override
  String get tradeHeadlineWaitingPaymentBuyer =>
      'Esperando a que el vendedor bloquee los sats';

  @override
  String get tradeHeadlineWaitingPaymentSeller =>
      'Paga la factura para bloquear los sats';

  @override
  String tradeHeadlineActiveBuyer(String amount) {
    return 'Envía $amount al vendedor';
  }

  @override
  String tradeHeadlineActiveSeller(String amount) {
    return 'Esperando a que el comprador envíe $amount';
  }

  @override
  String get tradeHeadlineFiatSentBuyer =>
      'Esperando a que el vendedor libere tus sats';

  @override
  String tradeHeadlineFiatSentSeller(String amount) {
    return 'Confirma que recibiste $amount';
  }

  @override
  String get tradeHeadlineDisputed => 'Disputa en curso';

  @override
  String get tradeHeadlineCancelled => 'Orden cancelada';

  @override
  String get tradeHeadlineLoading => 'Cargando operación…';

  @override
  String get tradeTimerPendingConsequence =>
      'Si expira, la orden se elimina del libro. No afectará tu reputación.';

  @override
  String get tradeTimerExpiryBackToBook =>
      'Si expira, la orden vuelve al libro.';

  @override
  String get tradeTimerExpiryCancelled => 'Si expira, la orden se cancela.';

  @override
  String get tradeTimerEscrowCancels =>
      'Tiempo aproximado. Si se agota, Mostro cancela la operación.';

  @override
  String get tradeTimerEscrowDisputes =>
      'Tiempo aproximado. Si se agota, Mostro abre una disputa.';

  @override
  String get tradeTimerEscrowCancellingBuyer =>
      'Mostro está a punto de cancelar la operación y devolver los sats al vendedor.';

  @override
  String get tradeTimerEscrowCancellingSeller =>
      'Mostro está a punto de cancelar la operación. Tus sats se quedan en tu billetera.';

  @override
  String get tradeTimerEscrowDisputing =>
      'Está a punto de abrirse una disputa.';

  @override
  String get tradeStepOrderTaken => 'Orden tomada';

  @override
  String get tradeStepWaitingTaker => 'Esperando tomador';

  @override
  String get tradeStepInvoiceBuyer => 'El vendedor bloquea los sats';

  @override
  String get tradeStepInvoiceSeller => 'Bloqueas los sats';

  @override
  String get tradeStepFiatBuyer => 'Envías el pago';

  @override
  String get tradeStepFiatSeller => 'El comprador envía el pago';

  @override
  String get tradeStepReleaseBuyer => 'El vendedor libera tus sats';

  @override
  String get tradeStepReleaseSeller => 'Confirmas y liberas los sats';

  @override
  String get tradeStepPayoutBuyer => 'Mostro te envía tus sats';

  @override
  String get tradeStepRate => 'Calificas la operación';

  @override
  String tradeCreatedAtLabel(String date) {
    return 'creada $date';
  }

  @override
  String stepIndicator(int current, int total) {
    return 'PASO $current DE $total';
  }

  @override
  String get addLightningInvoiceButton => 'Agregar factura Lightning';

  @override
  String get viewDisputeButton => 'Ver disputa';

  @override
  String get yourTradeTimelineTitle => 'TU OPERACIÓN';

  @override
  String get messageSendFailed =>
      'No se pudo enviar el mensaje. Inténtalo de nuevo.';

  @override
  String get invalidTradeId => 'ID de operación inválido';

  @override
  String get selectForDetailsHint => 'Selecciona ℹ o 👤\npara ver detalles';

  @override
  String noMessagesYet(String handle) {
    return 'Aún no hay mensajes.\n¡Saluda a $handle!';
  }

  @override
  String get exchangeInfoTooltip => 'Info de la operación';

  @override
  String get userInfoTooltip => 'Info del usuario';

  @override
  String chattingWith(String handle) {
    return 'Estás chateando con $handle';
  }

  @override
  String get unknownPeerHandle => 'Desconocido';

  @override
  String get messagesTab => 'Mensajes';

  @override
  String get disputesTab => 'Disputas';

  @override
  String get tradeInformationTitle => 'Información de la operación';

  @override
  String get orderIdLabel => 'ID de la orden';

  @override
  String get fiatAmountLabel => 'Monto fiat';

  @override
  String get satsAmountLabel => 'Monto en sats';

  @override
  String get peerReputationUnavailable =>
      'La reputación de este usuario no está disponible';

  @override
  String get statusLabel => 'Estado';

  @override
  String get paymentMethodLabel => 'Método de pago';

  @override
  String get createdLabel => 'Creada';

  @override
  String get userInformationTitle => 'Información del usuario';

  @override
  String get fileTypeVideo => 'Vídeo';

  @override
  String get fileTypeImage => 'Imagen';

  @override
  String get fileTypeArchive => 'Archivo comprimido';

  @override
  String get fileTypeFile => 'Archivo';

  @override
  String buyingSatsAmount(String sats) {
    return 'Comprando $sats sats';
  }

  @override
  String sellingSatsAmount(String sats) {
    return 'Vendiendo $sats sats';
  }

  @override
  String get viewOrderLink => 'Ver orden';

  @override
  String timeLeftLabel(String time) {
    return 'Quedan $time';
  }

  @override
  String get invoiceNoLongerExpected =>
      'Esta orden ya no espera una factura. Actualizando su estado…';

  @override
  String get invoiceAwaitingNode =>
      'Enviada. El nodo aún no responde; te llevaremos a la operación en cuanto lo haga.';

  @override
  String get invoiceAwaitingNodeLong =>
      'El nodo sigue sin responder. Si la operación no avanza, envíala de nuevo.';

  @override
  String get invoiceSubmitInFlight =>
      'Ya se está enviando una factura para esta orden. Espera la respuesta.';

  @override
  String get waitingForTradeAmount =>
      'Esperando el monto de la operación — inténtalo de nuevo en un momento.';

  @override
  String get fetchingTradeAmount => 'Obteniendo el monto de la operación…';

  @override
  String get enterInvoiceManually => 'Ingresar factura manualmente';

  @override
  String get rangeAmountTakeAction => 'Tomar orden';

  @override
  String orderAmountOutOfRange(int min, int max) {
    return 'El monto debe estar entre $min y $max sats para este nodo Mostro';
  }

  @override
  String orderCurrencyNotAccepted(String currency) {
    return 'Este nodo Mostro no acepta $currency. Elige otra moneda';
  }

  @override
  String orderAmountOutOfRangeFiat(int min, int max, String currency) {
    return 'El monto debe estar entre $min y $max $currency para este nodo Mostro';
  }

  @override
  String get priceTypeMarket => 'Mercado';

  @override
  String get priceTypeFixed => 'Fijo';

  @override
  String get priceTypeInfoTooltip => 'Info del tipo de precio';

  @override
  String get premiumSectionLabel => 'Prima';

  @override
  String get fixedPriceRangeNotAvailable =>
      'El precio fijo no está disponible para órdenes por rango. Desactiva el rango para usar un precio fijo.';

  @override
  String get priceTypesDialogTitle => 'Tipos de precio';

  @override
  String get priceTypesDialogContent =>
      'Precio de mercado: tu orden sigue la tasa del mercado, con la prima o el descuento que fijes.\n\nPrecio fijo: fijas la cantidad exacta de sats; no sigue al mercado.';

  @override
  String get newOrderTitle => 'Nueva orden';

  @override
  String get amountSectionSell => 'Cuánto vendes';

  @override
  String get amountSectionBuy => 'Cuánto compras';

  @override
  String get amountModeSingle => 'Único';

  @override
  String get amountModeRange => 'Rango';

  @override
  String get amountMinLabel => 'Mínimo';

  @override
  String get amountMaxLabel => 'Máximo';

  @override
  String paymentMethodsChosenCount(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString seleccionados',
      one: '1 seleccionado',
      zero: 'ninguno seleccionado',
    );
    return '$_temp0';
  }

  @override
  String get paymentMethodAdd => 'Agregar';

  @override
  String get paymentMethodSearchHint => 'Buscar métodos';

  @override
  String get customPaymentMethodLabel => 'Método de pago personalizado';

  @override
  String get priceSectionTitle => 'Precio';

  @override
  String premiumSellAbove(String premium) {
    return 'Vendes $premium% sobre el precio de mercado';
  }

  @override
  String premiumSellBelow(String premium) {
    return 'Vendes $premium% por debajo del mercado';
  }

  @override
  String premiumBuyBelow(String premium) {
    return 'Pagas $premium% menos que el mercado';
  }

  @override
  String premiumBuyAbove(String premium) {
    return 'Pagas $premium% más';
  }

  @override
  String get premiumExactMarket => 'Precio de mercado exacto';

  @override
  String get fixedPriceNote =>
      'A precio fijo la orden no sigue al mercado: el monto en sats queda tal cual lo escribes.';

  @override
  String get previewHintNoAmount =>
      'Escribe un monto y verás aquí cómo queda la orden.';

  @override
  String previewSellMarket(String amount, String premium, String active) {
    return 'Vendes BTC por $amount a precio de mercado $premium$active';
  }

  @override
  String previewSellMarketExact(String amount, String active) {
    return 'Vendes BTC por $amount a precio de mercado$active';
  }

  @override
  String previewBuyMarket(String amount, String premium, String active) {
    return 'Compras BTC por $amount a precio de mercado $premium$active';
  }

  @override
  String previewBuyMarketExact(String amount, String active) {
    return 'Compras BTC por $amount a precio de mercado$active';
  }

  @override
  String previewSellFixed(String sats, String amount, String active) {
    return 'Vendes $sats por $amount a precio fijo$active';
  }

  @override
  String previewBuyFixed(String sats, String amount, String active) {
    return 'Compras $sats por $amount a precio fijo$active';
  }

  @override
  String previewActiveSuffix(String hours) {
    return ' · activa $hours';
  }

  @override
  String get publishOrder => 'Publicar orden';

  @override
  String removePaymentMethod(String method) {
    return 'Quitar $method';
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
  String get paymentMethodsLabel => 'Métodos de pago';

  @override
  String get customPaymentMethodHint => 'Método de pago personalizado…';

  @override
  String amountRangeError(String min, String max) {
    return 'El monto debe estar entre $min y $max';
  }

  @override
  String get enterAmountTitle => 'Ingresa el monto';

  @override
  String minMaxRangeLabel(String min, String max, String currency) {
    return 'Mín: $min – Máx: $max $currency';
  }

  @override
  String get ratingFailed => 'La calificación falló. Inténtalo de nuevo.';

  @override
  String get submitUppercaseButton => 'ENVIAR';

  @override
  String selectStarTooltip(int count) {
    final intl.NumberFormat countNumberFormat = intl
        .NumberFormat.decimalPattern(localeName);
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Seleccionar $countString estrellas',
      one: 'Seleccionar 1 estrella',
    );
    return '$_temp0';
  }

  @override
  String get disputeDetailsTitle => 'Detalles de la disputa';

  @override
  String get disputeIdLabel => 'ID de la disputa';

  @override
  String disputeReasonLabel(String reason) {
    return 'Motivo: $reason';
  }

  @override
  String get solverLabel => 'Resolutor';

  @override
  String get serberoLabel => 'Serbero';

  @override
  String get disputeSerberoAssigned =>
      'Serbero, un asistente automático, está ayudando con tu disputa. Te hará algunas preguntas aquí y pasará el caso a una persona si hace falta.';

  @override
  String get disputeSolverTookOver =>
      'Un resolutor ha tomado el relevo en tu disputa.';

  @override
  String get disputeScreenTitle => 'Disputa';

  @override
  String get filtersDialogTitle => 'Filtros';

  @override
  String get resetButton => 'Restablecer';

  @override
  String get currencyLabel => 'Moneda';

  @override
  String get ratingLabel => 'Calificación';

  @override
  String get applyButton => 'Aplicar';

  @override
  String get successLabel => 'Éxito';

  @override
  String get copyButton => 'Copiar';

  @override
  String get shareButton => 'Compartir';

  @override
  String sendSatsToAddress(String sats) {
    return 'Envía $sats sats a:';
  }

  @override
  String get changeButton => 'Cambiar';

  @override
  String get unableToOpenNotification =>
      'No se pueden abrir los detalles de la notificación.';

  @override
  String get reasonBestPremium => 'Mejor prima';

  @override
  String get reasonMostReputable => 'Mejor reputado';

  @override
  String get marketPriceCaption => 'Precio de mercado';

  @override

  String effectiveRateUsd(String rate, String currency) {
    return '~$rate $currency/USD';
  }

  @override
  String reputationTradesLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'operaciones',
      one: 'operación',
    );
    return '$_temp0';
  }

  @override
  String reputationDaysLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'días',
      one: 'día',
    );
    return '$_temp0';
  }

  @override
