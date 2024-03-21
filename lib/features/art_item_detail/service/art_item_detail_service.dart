import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/services/dio_service.dart';
import '../models/art_item_detail_model.dart';

abstract interface class IArtItemDetailService {
  Future<ArtItemDetailModel> fetchItemDetails(String id);
}

class ArtItemDetailService implements IArtItemDetailService {
  Ref ref;
  ArtItemDetailService(this.ref);
  Dio get _dio => ref.read(dioService).dio;

  @override
  Future<ArtItemDetailModel> fetchItemDetails(String id) async {
    return const ArtItemDetailModel();
  }
}

final artItemDetailService =
    Provider<IArtItemDetailService>(ArtItemDetailService.new);
