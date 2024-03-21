import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Shimmer extends HookWidget {
  const Shimmer({
    super.key,
    this.width,
    this.height,
    this.minOpacity = 0.015,
    this.maxOpacity = 0.15,
    this.borderRadius,
    this.padding,
    this.margin,
    this.child,
    this.color,
  });

  final double? width;
  final double? height;
  final double minOpacity;
  final double maxOpacity;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(seconds: 1),
      lowerBound: minOpacity,
      upperBound: maxOpacity,
    )..repeat(reverse: true);

    return RepaintBoundary(
      child: FadeTransition(
        opacity: controller,
        child: Container(
          width: width,
          height: height,
          padding: padding,
          margin: margin,
          decoration: BoxDecoration(
            color: color ?? Colors.black,
            borderRadius:
                borderRadius ?? const BorderRadius.all(Radius.circular(4)),
          ),
          child: child,
        ),
      ),
    );
  }
}
