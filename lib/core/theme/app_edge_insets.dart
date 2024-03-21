import 'package:flutter/material.dart';

abstract final class AppEdgeInsets {
  const AppEdgeInsets._();

  static const zero = EdgeInsets.zero;

  static const allXSmall = EdgeInsets.all(4);
  static const allSmall = EdgeInsets.all(8);
  static const allMedium = EdgeInsets.all(12);
  static const allLarge = EdgeInsets.all(16);
  static const allXLarge = EdgeInsets.all(24);
  static const allXXLarge = EdgeInsets.all(32);

  static const horizontalXSmall = EdgeInsets.symmetric(horizontal: 4);
  static const horizontalSmall = EdgeInsets.symmetric(horizontal: 8);
  static const horizontalMedium = EdgeInsets.symmetric(horizontal: 12);
  static const horizontalLarge = EdgeInsets.symmetric(horizontal: 16);
  static const horizontalXLarge = EdgeInsets.symmetric(horizontal: 24);
  static const horizontalXXLarge = EdgeInsets.symmetric(horizontal: 32);

  static const verticalXSmall = EdgeInsets.symmetric(vertical: 4);
  static const verticalSmall = EdgeInsets.symmetric(vertical: 8);
  static const verticalMedium = EdgeInsets.symmetric(vertical: 12);
  static const verticalLarge = EdgeInsets.symmetric(vertical: 16);
  static const verticalXLarge = EdgeInsets.symmetric(vertical: 24);
  static const verticalXXLarge = EdgeInsets.symmetric(vertical: 32);
}
