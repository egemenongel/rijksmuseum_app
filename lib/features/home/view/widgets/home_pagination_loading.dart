import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rijksmuseum_app/core/components/loading_widget.dart';
import 'package:rijksmuseum_app/core/extensions/extensions.dart';
import 'package:rijksmuseum_app/features/home/viewmodel/home_providers.dart';

class HomePaginationLoading extends ConsumerWidget {
  const HomePaginationLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Positioned(
      bottom: 0,
      child: Visibility(
        visible: ref.watch(isFetchingProvider),
        child: Container(
          height: 50,
          width: context.width,
          color: Colors.black,
          child: const LoadingWidget(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
