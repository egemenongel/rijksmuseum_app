import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../constants/app_constants.dart';
import '../utils/print.dart';

final dioService = Provider<DioService>((_) => DioService());

class DioService {
  static final _options = BaseOptions(
    baseUrl: C.api.baseUrl,
  );
  final dio = Dio(_options)
    ..interceptors.add(PrettyDioLogger(
        responseBody: false, logPrint: (object) => Print.error(object)));
}
