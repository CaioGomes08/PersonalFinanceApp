import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class RestService {
  late Dio _dio;

  RestService() {
    _dio = Dio();

    _dio.options = BaseOptions(responseType: ResponseType.json);

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.responseType = ResponseType.json;
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          return handler.next(e);
        },
      ),
    );

    //Necessário para realizar chamadas localhost https.
    _dio.httpClientAdapter = IOHttpClientAdapter()
      ..createHttpClient = () {
        final client = HttpClient();
        client.badCertificateCallback = (cert, host, port) => true;
        return client;
      };
  }

  Dio get instance => _dio;
}
