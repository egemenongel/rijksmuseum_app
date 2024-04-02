import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../models/home_response_model.dart';
import '../service/home_service.dart';
import 'home_providers.dart';

class HomeViewmodel extends AsyncNotifier<List<ArtObjectModel>> {
  final List<ArtObjectModel> _items = [];
  int pageCount = 1;
  @override
  FutureOr<List<ArtObjectModel>> build() async {
    if (_items.isEmpty) {
      await fetchInitialList();
    }
    return _items;
  }

  IHomeService get homeService => ref.read(homeServiceProvider);

  // TODO: Write cleaner
  Future<void> fetchInitialList() async {
    state = const AsyncLoading();
    final res = await homeService.fetchHomeItems(pageCount, C.paginationSize);
    _items.addAll(res.artObjects!);
    state = AsyncValue.data(_items);
  }

  Future<void> fetchNextList() async {
    state = const AsyncLoading();
    ref.read(isFetchingProvider.notifier).state = true;
    pageCount += 1;
    final res = await homeService.fetchHomeItems(pageCount, C.paginationSize);
    ref.read(isFetchingProvider.notifier).state = false;
    state = AsyncValue.data(_items..addAll(res.artObjects!));
  }
}

final homeViewmodel =
    AsyncNotifierProvider<HomeViewmodel, List<ArtObjectModel>>(
        HomeViewmodel.new);
