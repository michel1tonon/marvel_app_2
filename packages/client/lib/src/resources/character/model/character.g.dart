// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      modified: json['modified'] as String,
      resourceURI: json['resourceURI'] as String,
      urls: (json['urls'] as List<dynamic>)
          .map((e) => Url.fromJson(e as Map<String, dynamic>))
          .toList(),
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
      comics: Content.fromJson(json['comics'] as Map<String, dynamic>),
      series: Content.fromJson(json['series'] as Map<String, dynamic>),
      stories: Content.fromJson(json['stories'] as Map<String, dynamic>),
      events: Content.fromJson(json['events'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'modified': instance.modified,
      'resourceURI': instance.resourceURI,
      'thumbnail': instance.thumbnail,
      'comics': instance.comics,
      'series': instance.series,
      'stories': instance.stories,
      'events': instance.events,
      'urls': instance.urls,
    };
