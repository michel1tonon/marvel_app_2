import 'package:json_annotation/json_annotation.dart';

part 'content_item.g.dart';

/// {@template content_item}
/// it represents a content_item
/// {@endtemplate}
@JsonSerializable()
class ContentItem {
  /// {@macro content_item}
  ContentItem({
    required this.resourceURI,
    required this.name,
  });

  /// factory.
  factory ContentItem.fromJson(Map<String, dynamic> json) =>
      _$ContentItemFromJson(json);

  /// resourceURI
  final String resourceURI;

  /// name
  final String name;
}
