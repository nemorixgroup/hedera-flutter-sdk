import 'package:hedera_flutter_sdk/hedera_flutter_sdk.dart';

/// Quick Start Example - hedera_flutter_sdk
///
/// EN: The simplest way to get started with hedera_flutter_sdk.
///     Use hardcoded credentials only for development and testing.
///     For production, use secure storage or environment variables.
/// ES: La forma mas simple de comenzar con hedera_flutter_sdk.
///     Usa credenciales hardcodeadas solo para desarrollo y pruebas.
///     Para produccion, usa almacenamiento seguro o variables de entorno.
///
/// EN: Get a free testnet account at / ES: Obtén una cuenta testnet en:
/// https://portal.hedera.com
void main() async {
  // EN: Step 1 - Configure the client with the operator credentials.
  //     The operator is the account that signs and pays transaction fees.
  //     forTestnet() connects to Hedera testnet (free for development).
  //     forMainnet() connects to Hedera mainnet (production).
  // ES: Paso 1 - Configurar el cliente con las credenciales del operador.
  //     El operador es la cuenta que firma y paga las comisiones de TX.
  //     forTestnet() conecta a Hedera testnet (gratis para desarrollo).
  //     forMainnet() conecta a Hedera mainnet (produccion).
  final client = HederaClient.forTestnet().setOperator(
    // EN: Your operator account ID (format: shard.realm.num)
    // ES: Tu ID de cuenta operadora (formato: shard.realm.num)
    AccountId.fromString('0.0.9186292'),
    // EN: Your operator private key (DER encoded ED25519)
    // ES: Tu clave privada del operador (DER encoded ED25519)
    PrivateKey.fromString('302e020100300506032b657004220420...'),
  );

  // EN: Step 2 - Generate a new ED25519 key pair for the new account.
  //     The private key controls the account - keep it safe!
  //     The public key is shared with Hedera to verify signatures.
  // ES: Paso 2 - Generar un nuevo par de claves ED25519 para la nueva cuenta.
  //     La clave privada controla la cuenta - mantenla segura!
  //     La clave publica se comparte con Hedera para verificar firmas.
  final newKey = await PrivateKey.generateED25519();
  final publicKey = await newKey.derivePublicKey();

  // EN: Step 3 - Create the new account on Hedera.
  //     setKey() sets the key that will control the new account.
  //     setInitialBalance() funds the account from the operator (in HBAR).
  //     execute() signs with the operator key and submits via gRPC.
  // ES: Paso 3 - Crear la nueva cuenta en Hedera.
  //     setKey() establece la clave que controlara la nueva cuenta.
  //     setInitialBalance() fondea la cuenta desde el operador (en HBAR).
  //     execute() firma con la clave del operador y envia via gRPC.
  final response = await AccountCreateTransaction()
      .setKey(publicKey)
      .setInitialBalance(Hbar(10))
      .execute(client);

  // EN: Step 4 - Wait for consensus and get the receipt.
  //     getReceipt() polls every 2 seconds until the transaction
  //     is confirmed on the network (typically under 10 seconds).
  //     The receipt contains the new account ID assigned by Hedera.
  // ES: Paso 4 - Esperar consenso y obtener el receipt.
  //     getReceipt() consulta cada 2 segundos hasta que la transaccion
  //     es confirmada en la red (tipicamente menos de 10 segundos).
  //     El receipt contiene el nuevo ID de cuenta asignado por Hedera.
  final receipt = await response.getReceipt(client);
  final newAccountId = receipt.accountId!;

  // EN: Print the new account ID (format: shard.realm.num)
  // ES: Imprimir el nuevo ID de cuenta (formato: shard.realm.num)
  print('Nueva cuenta / New account: $newAccountId');
  // new account URL on HashScan
  print(
    'HashScan: https://hashscan.io/testnet/account/$newAccountId',
  );

  // EN: Step 5 - Always close the client when done.
  //     This releases the gRPC channel and network resources.
  // ES: Paso 5 - Siempre cerrar el cliente al finalizar.
  //     Esto libera el canal gRPC y los recursos de red.
  await client.close();
}
