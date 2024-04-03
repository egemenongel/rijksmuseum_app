import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rijksmuseum_app/core/components/components.dart';
import 'package:rijksmuseum_app/core/config/router.dart';
import 'package:rijksmuseum_app/core/extensions/extensions.dart';
import 'package:rijksmuseum_app/core/theme/app_edge_insets.dart';
import 'package:rijksmuseum_app/features/home/models/home_response_model.dart';
import 'package:rijksmuseum_app/features/home/providers/home_providers.dart';

class HomeItemCard extends ConsumerWidget {
  const HomeItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final artItemData = ref.watch(currentArtItemProvider);
    return AsyncWidget(
        asyncData: artItemData,
        loading: const Padding(
          padding: AppEdgeInsets.allXSmall,
          child: Shimmer(
            color: Colors.white,
            borderRadius: BorderRadius.zero,
          ),
        ),
        builder: (artItem) {
          final id = artItem.objectNumber;
          return GestureDetector(
            onTap: () {
              context.pushNamed(
                Routes.artItemDetail,
                pathParameters: {'id': id},
              );
            },
            child: Container(
              margin: AppEdgeInsets.allXSmall,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  _Image(artItem: artItem),
                  _Properties(artItem: artItem),
                ],
              ),
            ),
          );
        });
  }
}

class _Image extends StatelessWidget {
  const _Image({
    required this.artItem,
  });

  final ArtObjectModel artItem;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder: (_, __) => Shimmer(
        color: Colors.black.withOpacity(0.5),
      ),
      imageUrl: artItem.webImage.url,
      fit: BoxFit.cover,
    );
  }
}

class _Properties extends StatelessWidget {
  const _Properties({
    required this.artItem,
  });

  final ArtObjectModel artItem;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        color: Colors.black.withOpacity(0.5),
        width: context.width / 2,
        padding: AppEdgeInsets.horizontalXSmall,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              artItem.title,
              style: context.textTheme.bodyLarge,
            ),
            Text(
              artItem.principalOrFirstMaker,
              style: context.textTheme.bodySmall,
            ),
            Text(
              artItem.longTitle.split(',').last,
              style: context.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
