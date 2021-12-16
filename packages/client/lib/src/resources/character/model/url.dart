import 'package:json_annotation/json_annotation.dart';

part 'url.g.dart';

/// {@template url}
/// it represents an url
/// {@endtemplate}
@JsonSerializable()
class Url {
  /// {@macro url}
  Url({
    required this.type,
    required this.url,
  });

  ///
  /// factory.
  factory Url.fromJson(Map<String, dynamic> json) => _$UrlFromJson(json);

  /// type
  final String type;

  /// url
  final String url;
}
