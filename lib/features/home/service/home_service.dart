import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/services/dio_service.dart';
import '../../../core/utils/print.dart';
import '../models/home_response_model.dart';

abstract interface class IHomeService {
  Future<HomeResponseModel> fetchHomeItems([int? p, int? ps]);
}

class HomeService implements IHomeService {
  final Ref ref;
  HomeService(this.ref);

  Dio get _dio => ref.read(dioService).dio;

  @override
  Future<HomeResponseModel> fetchHomeItems([int? p, int? ps]) async {
    try {
      final res = await _dio.get(
        '',
        queryParameters: {'ps': ps, 'p': p},
      );
      return HomeResponseModel.fromJson(res.data);
    } on DioException catch (e) {
      Print.error(e.message);
      if (e.type == DioExceptionType.connectionError) {
        throw InternetException();
      }
      throw HomeItemsException();
    }
  }
}

final homeServiceProvider = Provider<IHomeService>(HomeService.new);
