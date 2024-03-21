final class C {
  C._();
  //TODO: Write App Name
  static String appName = '';
  //TODO: Write Placeholder Link
  static String imagePlaceholder = '';
  static const api = _Api();
  static const hive = _Hive();
}

final class _Api {
  const _Api();
  String get baseUrl => '';
}

final class _Hive {
  const _Hive();

  String get defaultBoxName => 'app';
}
