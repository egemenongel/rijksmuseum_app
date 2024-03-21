import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rijksmuseum_app/features/art_item_detail/models/art_item_detail_model.dart';

import '../../../mock/mocks.dart';

void main() {
  const testId = 'id';
  const testModel = ArtItemDetailModel();
  test('Get art item details', () async {
    final testService = MockArtItemDetailService();
    when(() => testService.fetchItemDetails(testId))
        .thenAnswer((_) async => testModel);
    final res = await testService.fetchItemDetails(testId);
    expect(res, isA<ArtItemDetailModel>());
  });
}
