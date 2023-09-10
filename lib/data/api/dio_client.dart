import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DioClient {
  final DioConfig _config;

  DioClient({required DioConfig config}) : _config = config;

  Dio get dio {
    Dio dio = Dio(_config.options);
    dio.interceptors.addAll({
      _config.interceptors,
    });
    return dio;
  }
}

class DioConfig {
  final options = BaseOptions(baseUrl: 'https://run.mocky.io/v3/');
  final interceptors = _DioInterceptors();
}

class _DioInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
        'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}\n'
        'RESPONSE DATA => $response.data');
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    String? data = err.response?.data.toString();
    print(
        'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}\n'
        'RESPONSE DATA => $data');
    return super.onError(err, handler);
  }
}

final dioConfigProvider = Provider<DioConfig>((ref) {
  return DioConfig();
});

final dioProvider = Provider<Dio>((ref) {
  final config = ref.watch(dioConfigProvider);
  return DioClient(config: config).dio;
});
