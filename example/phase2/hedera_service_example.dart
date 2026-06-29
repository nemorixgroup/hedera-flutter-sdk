import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

/// HederaService - hedera_flutter_sdk
///
/// EN: A service class pattern for managing the HederaClient lifecycle
///     in a Flutter application. Use this as a singleton or with a
///     dependency injection framework like get_it or riverpod.
/// ES: Un patron de clase de servicio para gestionar el ciclo de vida
///     del HederaClient en una aplicacion Flutter. Usalo como singleton
///     o con un framework de inyeccion de dependencias como get_it o riverpod.
///
/// EN: Example usage / ES: Ejemplo de uso:
/// ```dart
/// final hederaService = HederaService();
/// hederaService.init();
/// // ... use hederaService.client for transactions
/// await hederaService.dispose();
/// ```
class HederaService {
  // EN: The HederaClient instance that manages the gRPC connection.
  //     Declared as late because it is initialized in init().
  // ES: La instancia de HederaClient que gestiona la conexion gRPC.
  //     Declarada como late porque se inicializa en init().
  late final HederaClient client;

  /// EN: Initializes the HederaClient with operator credentials.
  ///     Call this once when your app starts (e.g. in initState() or
  ///     in your app's dependency injection setup).
  ///     For production, read credentials from secure storage instead
  ///     of hardcoding them.
  /// ES: Inicializa el HederaClient con las credenciales del operador.
  ///     Llama esto una vez cuando tu app inicia (ej. en initState() o
  ///     en la configuracion de inyeccion de dependencias de tu app).
  ///     Para produccion, lee las credenciales desde almacenamiento
  ///     seguro en lugar de hardcodearlas.
  void init() {
    client = HederaClient.forTestnet().setOperator(
      // EN: Your operator account ID (format: shard.realm.num)
      // ES: Tu ID de cuenta operadora (formato: shard.realm.num)
      AccountId.fromString('0.0.9186292'),
      // EN: Your operator private key (DER encoded ED25519)
      // ES: Tu clave privada del operador (DER encoded ED25519)
      PrivateKey.fromString('302e...'),
    );
  }

  /// EN: Disposes the HederaClient and releases gRPC resources.
  ///     Call this when your app is closing or the service is no
  ///     longer needed (e.g. in dispose() of your widget or provider).
  /// ES: Libera el HederaClient y los recursos gRPC.
  ///     Llama esto cuando tu app se cierra o el servicio ya no es
  ///     necesario (ej. en dispose() de tu widget o provider).
  Future<void> dispose() async {
    // EN: Shuts down the gRPC channel gracefully.
    // ES: Cierra el canal gRPC de forma ordenada.
    await client.close();
  }
}
