import 'package:json_annotation/json_annotation.dart';

part 'feed.g.dart';

@JsonSerializable(explicitToJson: true)
class Feed {
  String? id;
  String title;
  String url;
  String description;
  String? imageUrl;

  Feed({
    this.id,
    this.imageUrl,
    required this.title,
    required this.url,
    required this.description,
   
  });

  factory Feed.fromJson(Map<String, dynamic> json) => $_FeedFromJson(json);
  Map<String, dynamic> toJson() => $_FeedToJson(this);
}