import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env', obfuscate: true)
final class Env {
  const Env();
  @EnviedField(varName: 'API_KEY', defaultValue: 'NO KEY')
  static final String apiKey = _Env.apiKey;
}
