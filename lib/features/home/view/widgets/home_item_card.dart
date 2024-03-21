import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rijksmuseum_app/core/components/shimmer.dart';
import 'package:rijksmuseum_app/core/extensions/extensions.dart';
import 'package:rijksmuseum_app/features/home/models/home_response_model.dart';

class HomeItemCard extends StatelessWidget {
  const HomeItemCard({
    super.key,
    required this.artItem,
  });

  final ArtObjectModel artItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(5),
        child: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              placeholder: (_, __) => Shimmer(
                color: Colors.black.withOpacity(0.5),
              ),
              imageUrl: artItem.webImage.url,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                color: Colors.black.withOpacity(0.5),
                width: context.width / 2,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      artItem.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      artItem.principalOrFirstMaker,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      artItem.longTitle.split(',').last,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
