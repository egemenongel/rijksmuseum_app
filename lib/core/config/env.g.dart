// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _Env {
  static const List<int> _enviedkeyapiKey = <int>[
    1647634345,
    223570345,
    1032023877,
    2344923161,
    1059318689,
    599391704,
    3421761470,
    2948868931,
  ];

  static const List<int> _envieddataapiKey = <int>[
    1647634329,
    223570383,
    1032023852,
    2344923244,
    1059318779,
    599391646,
    3421761494,
    2948868983,
  ];

  static final String apiKey = String.fromCharCodes(List<int>.generate(
    _envieddataapiKey.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddataapiKey[i] ^ _enviedkeyapiKey[i]));
}
