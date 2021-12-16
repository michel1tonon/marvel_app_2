// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Content _$ContentFromJson(Map<String, dynamic> json) => Content(
      available: json['available'] as int,
      collectionURI: json['collectionURI'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => ContentItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      returned: json['returned'] as int,
    );

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'available': instance.available,
      'collectionURI': instance.collectionURI,
      'items': instance.items,
      'returned': instance.returned,
    };
