import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable(explicitToJson: true)
class Article {

  String title;
  String link;
  String content;
  String fullText;
  bool isRead;

  Article({
    required this.title,
    required this.content,
    required this.fullText,
    required this.link,
    required this.isRead,
  });

  factory Article.fromJson(Map<String, dynamic> json) => $_ArticleFromJson(json);
  Map<String, dynamic> toJson() => $_ArticleToJson(this);

  
}
