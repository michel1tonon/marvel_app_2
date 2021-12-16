import 'package:client/client.dart';
import 'package:client/src/exceptions/exceptions.dart';
import 'package:dio/dio.dart';

/// {@template character_resource}
/// it represents a character_resource
/// {@endtemplate}
class CharacterResource {
  /// {@macro character_resource}
  CharacterResource(this.client);

  /// client
  final Dio client;

  /// fetch a character list
  Future<List<Character>> fetchList() async {
    const path = '/characters?orderBy=name&limit=30';

    final response = await client.get<Map<String, dynamic>>(path);

    if (response.statusCode != 200) {
      throw HttpErrorResponse(response: response);
    }

    try {
      final body = response.data!['data'] as Map<String, dynamic>;
      return (body['results'] as List)
          .map((json) => Character.fromJson(json))
          .toList();
    } catch (e) {
      throw HttpMalformedResponse();
    }
  }
}
