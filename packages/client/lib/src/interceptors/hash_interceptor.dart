import 'dart:convert';

import 'package:client/src/environment.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';

///
class HashInterceptor extends Interceptor {
  ///
  HashInterceptor({
    required this.environment,
  });

  ///
  final Environment environment;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final params = <String, dynamic>{
      ...options.queryParameters,
      ..._hashParams
    };

    super.onRequest(options.copyWith(queryParameters: params), handler);
  }

  /*
   Server-side applications must pass two parameters in addition to the apikey 
   parameter:
  ts - a timestamp (or other long string which can change on a 
  request-by-request basis)
  hash - a md5 digest of the ts parameter, your private key and your public key 
  (e.g. md5(ts+privateKey+publicKey)
  For example, a user with a public key of "1234" and a private key of "abcd" 
  could construct a valid call as follows:
 http://gateway.marvel.com/v1/public/characters?ts=${ts}&apikey=${publicKey}&hash=${hash}
  (the hash value is the md5 digest of 1abcd1234)
  * */
  /// Create a mao with params hash.
  Map<String, dynamic> get _hashParams {
    final ts = DateTime.now().millisecondsSinceEpoch.toString();
    final hash = md5
        .convert(
          utf8.encode('$ts${environment.privateKey}${environment.publicKey}'),
        )
        .toString();

    return <String, dynamic>{
      'ts': ts,
      'apikey': environment.publicKey,
      'hash': hash,
    };
  }
}
