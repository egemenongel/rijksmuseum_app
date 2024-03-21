import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:rijksmuseum_app/core/extensions/extensions.dart';
import 'package:rijksmuseum_app/features/art_item_detail/models/art_item_detail_model.dart';

class ArtItemDetailHeader extends StatelessWidget {
  const ArtItemDetailHeader({
    super.key,
    required this.artObject,
  });

  final DetailArtObjectModel artObject;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: context.width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          _Image(artObject: artObject),
          if (artObject.location != null) _OnDisplayChip(artObject: artObject)
        ],
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    required this.artObject,
  });

  final DetailArtObjectModel artObject;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (_) => PhotoView(
          tightMode: true,
          gestureDetectorBehavior: HitTestBehavior.translucent,
          imageProvider: NetworkImage(
            artObject.webImage.url,
          ),
        ),
      ),
      child: SizedBox(
        height: 500,
        width: context.width,
        child: CachedNetworkImage(
          imageUrl: artObject.webImage.url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _OnDisplayChip extends StatelessWidget {
  const _OnDisplayChip({
    required this.artObject,
  });

  final DetailArtObjectModel artObject;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 10,
      child: Chip(
        label: Text(
          'On display in room ${artObject.location!.split('-').last}'.hardCoded,
          style: context.textTheme.bodyMedium,
        ),
        color: const MaterialStatePropertyAll(
          Color(0xffaaa04d),
        ),
        side: BorderSide.none,
      ),
    );
  }
}
