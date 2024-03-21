import 'package:flutter/material.dart';
import 'package:rijksmuseum_app/core/extensions/extensions.dart';
import 'package:rijksmuseum_app/features/art_item_detail/models/art_item_detail_model.dart';
import 'package:rijksmuseum_app/features/art_item_detail/view/widgets/material_features.dart';

class ArtItemDetailProperties extends StatelessWidget {
  const ArtItemDetailProperties({
    super.key,
    required this.artObject,
  });

  final DetailArtObjectModel artObject;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          _Features(artObject: artObject),
          _Material(artObject: artObject)
        ],
      ),
    );
  }
}

class _Features extends StatelessWidget {
  const _Features({
    required this.artObject,
  });

  final DetailArtObjectModel artObject;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          artObject.longTitle,
          style: context.textTheme.titleLarge,
        ),
        const SizedBox(height: 10),
        if (artObject.plaqueDescriptionEnglish != null) ...[
          Text(
            artObject.plaqueDescriptionEnglish!,
            style: context.textTheme.headlineSmall,
          ),
          const SizedBox(height: 10),
        ],
        Text(
          'Object Number'.hardCoded,
          style: context.textTheme.bodyLarge,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          artObject.objectNumber!,
          style: context.textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Date'.hardCoded,
          style: context.textTheme.bodyLarge,
        ),
        const SizedBox(
          height: 5,
        ),
        Text('${artObject.dating!.presentingDate}',
            style: context.textTheme.headlineSmall),
        if (artObject.objectTypes != null &&
            artObject.objectTypes!.isNotEmpty) ...[
          const SizedBox(
            height: 10,
          ),
          Text(
            'Object Type'.hardCoded,
            style: context.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            artObject.objectTypes!.map((e) => e.capitalize).join(', '),
            style: context.textTheme.headlineSmall,
          ),
        ],
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class _Material extends StatelessWidget {
  const _Material({
    required this.artObject,
  });

  final DetailArtObjectModel artObject;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Material and Technique'.hardCoded,
          style: context.textTheme.bodyLarge,
        ),
        const SizedBox(
          height: 5,
        ),
        MaterialFeature(
          iconPath: Icons.science_rounded,
          prop: artObject.physicalMedium.capitalize,
        ),
        const SizedBox(
          height: 5,
        ),
        MaterialFeature(
            iconPath: Icons.texture_rounded,
            prop: artObject.materials!.join(', ')),
        const SizedBox(
          height: 5,
        ),
        MaterialFeature(
            iconPath: Icons.straighten_rounded, prop: artObject.subTitle)
      ],
    );
  }
}
