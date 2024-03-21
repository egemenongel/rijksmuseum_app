import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rijksmuseum_app/features/home/view/widgets/home_item_card.dart';
import 'package:rijksmuseum_app/features/home/view/widgets/home_pagination_loading.dart';

import '../../../core/components/components.dart';
import '../models/home_response_model.dart';
import '../viewmodel/home_providers.dart';
import '../viewmodel/home_viewmodel.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sc = useScrollController();
    final state = ref.watch(homeViewmodel);
    sc.addListener(() async {
      if (!ref.read(isFetchingProvider)) {
        if (sc.position.pixels >= sc.position.maxScrollExtent) {
          await ref.read(homeViewmodel.notifier).fetchNextList();
        }
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rijksmuseum Collection'),
        centerTitle: false,
      ),
      body: Body(state: state, sc: sc),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.state,
    required this.sc,
  });

  final AsyncValue<List<ArtObjectModel>> state;
  final ScrollController sc;

  @override
  Widget build(BuildContext context) {
    return AsyncWidget(
      asyncData: state,
      builder: (items) {
        return Stack(
          children: [
            ItemsGrid(sc: sc, state: state),
            const HomePaginationLoading()
          ],
        );
      },
    );
  }
}

class ItemsGrid extends ConsumerWidget {
  const ItemsGrid({
    super.key,
    required this.sc,
    required this.state,
  });

  final ScrollController sc;
  final AsyncValue<List<ArtObjectModel>> state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      controller: sc,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
      ),
      itemCount: state.value!.length,
      itemBuilder: (_, index) {
        return HomeItemCard(
          artItem: state.value![index],
        );
      },
    );
  }
}
