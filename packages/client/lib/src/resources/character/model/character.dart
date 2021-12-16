import 'package:client/client.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character.g.dart';

/// {@template character}
/// it represents a character
/// {@endtemplate}
@JsonSerializable()
class Character extends Equatable {
  /// {@macro character}
  const Character({
    required this.id,
    required this.name,
    required this.description,
    required this.modified,
    required this.resourceURI,
    required this.urls,
    required this.thumbnail,
    required this.comics,
    required this.series,
    required this.stories,
    required this.events,
  });

  /// factory.
  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  /// id
  final int id;

  /// name
  final String name;

  /// description
  final String description;

  /// modified
  final String modified;

  /// resourceURI
  final String resourceURI;

  /// thumbnail
  final Thumbnail thumbnail;

  /// comics
  final Content comics;

  /// series
  final Content series;

  /// stories
  final Content stories;

  /// events
  final Content events;

  /// urls
  final List<Url> urls;

  @override
  List<Object?> get props => [id, name, description, modified, resourceURI];
}
