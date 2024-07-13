// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      title: json['title'] as String,
      content: json['content'] as String,
      fullText: json['fullText'] as String,
      link: json['link'] as String,
      isRead: json['isRead'] as bool,
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'title': instance.title,
      'link': instance.link,
      'content': instance.content,
      'fullText': instance.fullText,
      'isRead': instance.isRead,
    };
