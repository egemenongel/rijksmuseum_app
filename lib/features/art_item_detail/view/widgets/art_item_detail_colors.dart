import 'package:flutter/material.dart';
import 'package:rijksmuseum_app/features/art_item_detail/models/art_item_detail_model.dart';

class ArtItemDetailColors extends StatelessWidget {
  const ArtItemDetailColors({
    super.key,
    required this.artObject,
  });

  final DetailArtObjectModel artObject;
  Color colorFromHex(String hex) =>
      Color(int.parse('0xff${hex.replaceAll(' ', '').replaceAll('#', '')}'));

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: artObject.colors!
            .map(
              (e) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 1),
                height: 50,
                width: 50,
                decoration: BoxDecoration(color: colorFromHex(e.hex)),
              ),
            )
            .toList(),
      ),
    );
  }
}
