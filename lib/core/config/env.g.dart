// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _Env {
  static const List<int> _enviedkeyapiKey = <int>[
    4066721172,
    79132107,
    633167388,
    1706015151,
    1076358642,
    2058652819,
    1410624889,
    453589347,
  ];

  static const List<int> _envieddataapiKey = <int>[
    4066721188,
    79132077,
    633167477,
    1706015194,
    1076358568,
    2058652885,
    1410624785,
    453589335,
  ];

  static final String apiKey = String.fromCharCodes(List<int>.generate(
    _envieddataapiKey.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddataapiKey[i] ^ _enviedkeyapiKey[i]));
}
