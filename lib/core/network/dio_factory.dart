import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:movies_appgain_io/core/network/api_constance.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String applicationJson = "application/json";
const String contentType = "content-type";
const String accept = "accept";
const String authorization = "authorization";
const String defaultLanguage = "language";

class DioFactory {
  DioFactory();

  Future<Dio> getDio() async {
    Dio dio = Dio();

    Map<String, String> headers = {
      contentType: applicationJson,
      accept: applicationJson,
    };

    dio.options = BaseOptions(
        baseUrl: ApiConstance.baseUrl,
        headers: headers,
        receiveTimeout: ApiConstance.apiTimeOut,
        sendTimeout: ApiConstance.apiTimeOut);

    if (!kReleaseMode) {
      // its debug mode so print app logs
      dio.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: false));
    }

    return dio;
  }
}
