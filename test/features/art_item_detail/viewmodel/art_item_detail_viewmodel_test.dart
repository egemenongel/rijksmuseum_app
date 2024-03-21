import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rijksmuseum_app/features/art_item_detail/models/art_item_detail_model.dart';
import 'package:rijksmuseum_app/features/art_item_detail/service/art_item_detail_service.dart';
import 'package:rijksmuseum_app/features/art_item_detail/viewmodel/art_item_detail_viewmodel.dart';

import '../../../mock/mocks.dart';

void main() {
  const testId = 'id';
  const testModel = ArtItemDetailModel();
  ProviderContainer makeProviderContainer(
      MockArtItemDetailService mockArtItemDetailService) {
    final container = ProviderContainer(
      overrides: [
        artItemDetailService.overrideWithValue(mockArtItemDetailService),
      ],
    );
    addTearDown(container.dispose);
    return container;
  }

  test('fetchItemDetails success', () async {
    final mockArtItemDetailService = MockArtItemDetailService();
    when(() => mockArtItemDetailService.fetchItemDetails(testId))
        .thenAnswer((_) async => testModel);
    final container = makeProviderContainer(mockArtItemDetailService);
    final notifier = container.read(artItemDetailViewmodel(testId).notifier);

    expect(notifier.state, const AsyncLoading<ArtItemDetailModel>());
    await notifier.build(testId);
    expect(notifier.state, isA<AsyncValue<ArtItemDetailModel>>());
  });
}
