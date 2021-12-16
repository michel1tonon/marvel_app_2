import 'package:json_annotation/json_annotation.dart';

part 'thumbnail.g.dart';

/// {@template thumbnail}
/// it represents a thumbnail
/// {@endtemplate}
@JsonSerializable()
class Thumbnail {
  /// {@macro thumbnail}
  Thumbnail({
    required this.path,
    required this.extension,
  });

  /// factory.
  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);

  /// path
  final String path;

  /// extension
  final String extension;
}
