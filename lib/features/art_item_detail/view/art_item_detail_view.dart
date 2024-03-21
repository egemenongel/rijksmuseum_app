import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rijksmuseum_app/features/art_item_detail/view/widgets/art_item_detail_colors.dart';
import 'package:rijksmuseum_app/features/art_item_detail/view/widgets/art_item_detail_header.dart';
import 'package:rijksmuseum_app/features/art_item_detail/view/widgets/art_item_detail_properties.dart';

import '../../../core/components/async_widget.dart';
import '../viewmodel/art_item_detail_viewmodel.dart';

class ArtItemDetailView extends StatelessWidget {
  const ArtItemDetailView({super.key, required this.itemId});
  final String itemId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Details(itemId),
    );
  }
}

class Details extends ConsumerWidget {
  const Details(this.itemId, {super.key});
  final String itemId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailsVm = ref.watch(artItemDetailViewmodel(itemId));
    return AsyncWidget(
      asyncData: detailsVm,
      builder: (data) {
        final artObject = data.artObject!;
        return SingleChildScrollView(
          child: SafeArea(
            top: false,
            child: Column(
              children: [
                ArtItemDetailHeader(artObject: artObject),
                const SizedBox(height: 10),
                ArtItemDetailColors(artObject: artObject),
                const SizedBox(height: 10),
                ArtItemDetailProperties(artObject: artObject),
              ],
            ),
          ),
        );
      },
    );
  }
}
