import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rijksmuseum_app/core/constants/app_constants.dart';
import 'package:rijksmuseum_app/features/home/models/home_response_model.dart';
import 'package:rijksmuseum_app/features/home/providers/home_providers.dart';
import 'package:rijksmuseum_app/features/home/view/widgets/home_item_card.dart';

class ItemsGrid extends HookConsumerWidget {
  const ItemsGrid({
    super.key,
    required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
      ),
      itemCount: count,
      itemBuilder: (_, index) {
        final AsyncValue<ArtObjectModel> currentItemIndex = ref
            .watch(paginatedItemsProvider(index ~/ C.paginationSize))
            .whenData(
                (pageData) => pageData.artObjects![index % C.paginationSize]);
        return ProviderScope(
          overrides: [
            currentArtItemProvider.overrideWithValue(currentItemIndex)
          ],
          child: const HomeItemCard(),
        );
      },
    );
  }
}
