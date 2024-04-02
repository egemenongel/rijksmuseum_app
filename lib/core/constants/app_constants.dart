import 'package:rijksmuseum_app/core/config/env.dart';

final class C {
  C._();
  static String appName = 'Rijksmuesum App';
  static const paginationSize = 12;
  static const api = _Api();
  static const hive = _Hive();
}

final class _Api {
  const _Api();
  String get baseUrl =>
      'https://www.rijksmuseum.nl/api/en/collection?key=${Env.apiKey}';
  String details(String id) =>
      'https://www.rijksmuseum.nl/api/en/collection/$id?key=${Env.apiKey}';
}

final class _Hive {
  const _Hive();

  String get defaultBoxName => 'app';
}
