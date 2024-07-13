import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable(explicitToJson: true)
class Category {
  String name;
  DateTime createdAt;
  DateTime updatedAt;

  Category({
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) => $_CategoryFromJson(json);
  Map<String, dynamic>toJson() => $CategoryToJson(this);

}