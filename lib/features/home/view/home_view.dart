import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rijksmuseum_app/core/extensions/extensions.dart';
import 'package:rijksmuseum_app/features/home/view/widgets/home_items_grid.dart';

import '../../../core/components/components.dart';
import '../providers/home_providers.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rijksmuseum Collection'.hardCoded),
        centerTitle: false,
      ),
      body: const _Body(),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countData = ref.watch(itemsCountProvider);
    return AsyncWidget(
      asyncData: countData,
      builder: (count) {
        return Stack(
          children: [
            ItemsGrid(count: count!),
          ],
        );
      },
    );
  }
}
