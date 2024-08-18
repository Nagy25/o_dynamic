import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart'; // This is the file where the generated code will go

@JsonSerializable()
class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  // Factory method to create a Post from JSON
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  // Method to convert a Post to JSON
  Map<String, dynamic> toJson() => _$PostToJson(this);
}
