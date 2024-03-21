import 'package:flutter/material.dart';

class UnfocusArea extends StatelessWidget {
  const UnfocusArea({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: FocusScope.of(context).unfocus,
      child: child,
    );
  }
}
