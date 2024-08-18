import 'package:json_annotation/json_annotation.dart';

part 'post_parameters.g.dart';

@JsonSerializable()
class PostParameters {
  final String apiName;
  final int? userId;

  PostParameters({
    required this.apiName,
    this.userId,
  });

  factory PostParameters.fromJson(Map<String, dynamic> json) =>
      _$PostParametersFromJson(json);

  Map<String, dynamic> toJson() => _$PostParametersToJson(this);
}
