import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rijksmuseum_app/features/home/models/home_response_model.dart';
import 'package:rijksmuseum_app/features/home/service/home_service.dart';
import 'package:rijksmuseum_app/features/home/viewmodel/home_viewmodel.dart';

import '../../../mock/mocks.dart';

void main() {
  ProviderContainer makeProviderContainer(MockHomeService mockHomeService) {
    final container = ProviderContainer(
      overrides: [
        homeServiceProvider.overrideWithValue(mockHomeService),
      ],
    );
    addTearDown(container.dispose);
    return container;
  }

  group('homeViewmodel', () {
    test('fetchInitialList success', () async {
      final mockHomeService = MockHomeService();

      when(() => mockHomeService.fetchHomeItems(any(), any()))
          .thenAnswer((_) async => const HomeResponseModel(artObjects: []));
      final container = makeProviderContainer(mockHomeService);
      final notifier = container.read(homeViewmodel.notifier);

      await notifier.fetchInitialList();
      expect(notifier.state, isA<AsyncValue<List<ArtObjectModel>>>());
    });

    test('fetch Next List', () async {
      final testService = MockHomeService();

      when(() => testService.fetchHomeItems(any(), any()))
          .thenAnswer((_) async => const HomeResponseModel(artObjects: []));
      final container = makeProviderContainer(testService);
      final notifier = container.read(homeViewmodel.notifier);

      expect(notifier.state, const AsyncLoading<List<ArtObjectModel>>());
      await notifier.fetchNextList();
      expect(notifier.state, isA<AsyncValue<List<ArtObjectModel>>>());
    });
  });
}
