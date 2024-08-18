import 'package:json_annotation/json_annotation.dart';

part 'main_config.g.dart';

@JsonSerializable()
class MainConfig {
  final String baseUrl;

  MainConfig({
    required this.baseUrl,
  });

  factory MainConfig.fromJson(Map<String, dynamic> json) =>
      _$MainConfigFromJson(json);

  Map<String, dynamic> toJson() => _$MainConfigToJson(this);
}
