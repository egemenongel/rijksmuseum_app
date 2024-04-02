import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rijksmuseum_app/features/home/models/home_response_model.dart';
import 'package:rijksmuseum_app/features/home/view/widgets/home_item_card.dart';
import 'package:rijksmuseum_app/features/home/viewmodel/home_providers.dart';
import 'package:rijksmuseum_app/features/home/viewmodel/home_viewmodel.dart';

class ItemsGrid extends HookConsumerWidget {
  const ItemsGrid({
    super.key,
    required this.items,
  });

  final List<ArtObjectModel> items;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: Better pagination
    final sc = useScrollController();
    sc.addListener(() async {
      if (!ref.read(isFetchingProvider)) {
        if (sc.position.pixels >= sc.position.maxScrollExtent) {
          await ref.read(homeViewmodel.notifier).fetchNextList();
        }
      }
    });
    return GridView.builder(
      padding: EdgeInsets.zero,
      controller: sc,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
      ),
      itemCount: items.length,
      itemBuilder: (_, index) {
        return HomeItemCard(
          artItem: items[index],
        );
      },
    );
  }
}
