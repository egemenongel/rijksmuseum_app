import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/errors/exceptions.dart';
import '../../../core/services/dio_service.dart';
import '../../../core/utils/print.dart';
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
    try {
      final res = await _dio.get(C.api.details(id));
      return ArtItemDetailModel.fromJson(res.data);
    } on DioException catch (e) {
      Print.error(e.message);
      if (e.type == DioExceptionType.connectionError) {
        throw InternetException();
      }
      throw DetailsException();
    }
  }
}

final artItemDetailService =
    Provider<IArtItemDetailService>(ArtItemDetailService.new);
