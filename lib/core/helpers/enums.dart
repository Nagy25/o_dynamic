import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum ItemComponent {
  @JsonValue('posts')
  posts,
  @JsonValue('external-page')
  externalPage,
  unknown,
}
