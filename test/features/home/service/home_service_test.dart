import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rijksmuseum_app/features/home/models/home_response_model.dart';

import '../../../mock/mocks.dart';

void main() {
  // TODO: Write fail tests
  test('Get home items', () async {
    final testService = MockHomeService();
    when(() => testService.fetchHomeItems())
        .thenAnswer((_) async => const HomeResponseModel(artObjects: []));

    final res = await testService.fetchHomeItems();

    verify(() => testService.fetchHomeItems()).called(1);

    expect(res, isA<HomeResponseModel>());
  });
}
