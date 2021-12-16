import 'package:client/client.dart';
import 'package:json_annotation/json_annotation.dart';

part 'content.g.dart';

/// {@template content}
/// it represents a content type (series, comics, stories, events)
/// {@endtemplate}
@JsonSerializable()
class Content {
  /// {@macro content}
  Content({
    required this.available,
    required this.collectionURI,
    required this.items,
    required this.returned,
  });

  /// factory.
  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);

  /// available
  final int available;

  /// collectionURI
  final String collectionURI;

  /// items
  final List<ContentItem> items;

  /// returned
  final int returned;
}
