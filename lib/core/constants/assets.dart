abstract final class R {
  const R._();

  static const icons = _Icons();
  static const images = _Images();
  static const animations = _Animations();
}

final class _Icons {
  String _path(String name) => 'assets/images/$name.svg';
  const _Icons();
}

final class _Images {
  const _Images();
  String _path(String name) => 'assets/images/$name.webp';
  String get noImage => _path('no_image');
}

final class _Animations {
  String _path(String name) => 'assets/animations/$name.json';
  const _Animations();
}
