import 'package:dio/dio.dart';

///
class HttpErrorResponse implements Exception {
  ///
  HttpErrorResponse({required this.response})
      : uri = response.requestOptions.uri.toString(),
        statusCode = response.statusCode;

  ///
  final Response response;

  ///
  final String uri;

  ///
  final int? statusCode;
}

///
class HttpMalformedResponse implements Exception {}
