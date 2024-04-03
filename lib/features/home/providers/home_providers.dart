import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/home_response_model.dart';
import '../service/home_service.dart';

final itemsCountProvider = FutureProvider<int?>((ref) async {
  final homeService = ref.read(homeServiceProvider);
  final res = await homeService.fetchHomeItems(1);
  return res.count;
});

final paginatedItemsProvider =
    FutureProvider.family<HomeResponseModel, int>((ref, int pageIndex) async {
  final service = ref.read(homeServiceProvider);
  return service.fetchHomeItems(pageIndex + 1);
});

final currentArtItemProvider = Provider<AsyncValue<ArtObjectModel>>((ref) {
  throw UnimplementedError();
});
