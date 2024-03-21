import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/services/dio_service.dart';
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
    return const HomeResponseModel(artObjects: []);
  }
}

final homeServiceProvider = Provider<IHomeService>(HomeService.new);
