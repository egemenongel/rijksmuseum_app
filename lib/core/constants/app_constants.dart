import 'package:rijksmuseum_app/core/config/env.dart';

final class C {
  C._();
  //TODO: Write App Name
  static String appName = '';
  //TODO: Write Placeholder Link
  static String imagePlaceholder = '';
  static const paginationSize = 12;
  static const api = _Api();
  static const hive = _Hive();
}

final class _Api {
  const _Api();
  String get baseUrl =>
      'https://www.rijksmuseum.nl/api/en/collection?key=${Env.apiKey}';
}

final class _Hive {
  const _Hive();

  String get defaultBoxName => 'app';
}
