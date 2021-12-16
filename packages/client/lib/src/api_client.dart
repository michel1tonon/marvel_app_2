import 'package:client/client.dart';
import 'package:dio/dio.dart';

///
class ApiClient {
  ///
  ApiClient(
    this.environment,
  ) : _dio = Dio(
          BaseOptions(
            baseUrl: environment.baseUrl,
          ),
        )..interceptors.add(HashInterceptor(environment: environment));

  final Dio _dio;

  ///
  final Environment environment;

  ///
  late final characterResource = CharacterResource(_dio);
}
