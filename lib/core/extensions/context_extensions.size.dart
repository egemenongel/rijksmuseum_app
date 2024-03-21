part of 'context_extensions.dart';

extension SizeExtensions on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get screenHeight =>
      mediaQuery.size.height - kToolbarHeight - kToolbarHeight * 1.2;

  double get top => MediaQuery.viewPaddingOf(this).top;
  double get bottom => MediaQuery.viewPaddingOf(this).bottom;

  double get p4 => 4.0;
  double get p8 => 8.0;
  double get p12 => 12.0;
  double get p16 => 16.0;
  double get p20 => 20.0;
  double get p24 => 24.0;
  double get p32 => 32.0;
}

extension GapExtensions on BuildContext {
  SizedBox get gapW4 => SizedBox(width: p4);
  SizedBox get gapW8 => SizedBox(width: p8);
  SizedBox get gapW12 => SizedBox(width: p12);
  SizedBox get gapW16 => SizedBox(width: p16);
  SizedBox get gapW20 => SizedBox(width: p20);
  SizedBox get gapW24 => SizedBox(width: p24);
  SizedBox get gapW32 => SizedBox(width: p32);

  SizedBox get gapH4 => SizedBox(height: p4);
  SizedBox get gapH8 => SizedBox(height: p8);
  SizedBox get gapH12 => SizedBox(height: p12);
  SizedBox get gapH16 => SizedBox(height: p16);
  SizedBox get gapH20 => SizedBox(height: p20);
  SizedBox get gapH24 => SizedBox(height: p24);
  SizedBox get gapH32 => SizedBox(height: p32);
}

extension PaddingExtensionAll on BuildContext {
  EdgeInsets get padding4 => EdgeInsets.all(p4);
  EdgeInsets get padding8 => EdgeInsets.all(p8);
  EdgeInsets get padding12 => EdgeInsets.all(p12);
  EdgeInsets get padding16 => EdgeInsets.all(p16);
  EdgeInsets get padding20 => EdgeInsets.all(p20);
}

extension PaddingExtensionSymmeric on BuildContext {
  EdgeInsets get paddingLowestHorizontal =>
      EdgeInsets.symmetric(horizontal: p4);
  EdgeInsets get paddingLowHorizontal => EdgeInsets.symmetric(horizontal: p8);
  EdgeInsets get padding12Horizontal => EdgeInsets.symmetric(horizontal: p12);
  EdgeInsets get padding16Horizontal => EdgeInsets.symmetric(horizontal: p16);
  EdgeInsets get padding20Horizontal => EdgeInsets.symmetric(horizontal: p20);

  EdgeInsets get padding4Vertical => EdgeInsets.symmetric(vertical: p4);
  EdgeInsets get padding8Vertical => EdgeInsets.symmetric(vertical: p8);
  EdgeInsets get padding12Vertical => EdgeInsets.symmetric(vertical: p12);
  EdgeInsets get padding16Vertical => EdgeInsets.symmetric(vertical: p16);
  EdgeInsets get padding20Vertical => EdgeInsets.symmetric(vertical: p20);
}
