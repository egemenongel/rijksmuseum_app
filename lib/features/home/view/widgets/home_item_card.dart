import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rijksmuseum_app/core/components/shimmer.dart';
import 'package:rijksmuseum_app/core/config/router.dart';
import 'package:rijksmuseum_app/core/extensions/extensions.dart';
import 'package:rijksmuseum_app/core/theme/app_edge_insets.dart';
import 'package:rijksmuseum_app/features/home/models/home_response_model.dart';

class HomeItemCard extends StatelessWidget {
  const HomeItemCard({
    super.key,
    required this.artItem,
  });

  final ArtObjectModel artItem;

  @override
  Widget build(BuildContext context) {
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
