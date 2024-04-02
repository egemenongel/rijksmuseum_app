import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rijksmuseum_app/core/components/loading_widget.dart';
import 'package:rijksmuseum_app/core/extensions/extensions.dart';

class BottomLoading extends ConsumerWidget {
  const BottomLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 50,
      width: context.width,
      child: const LoadingWidget(
        color: Colors.white,
      ),
    );
  }
}
