// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feed _$FeedFromJson(Map<String, dynamic> json) => Feed(
      id: json['id'] as String?,
      imageUrl: json['imageUrl'] as String?,
      title: json['title'] as String,
      url: json['url'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
    };
