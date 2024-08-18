import 'package:json_annotation/json_annotation.dart';
import 'package:o_dynamic/models/app_color.dart';
import 'package:o_dynamic/models/main_config.dart';
import 'package:o_dynamic/models/menu_item.dart';

part 'app_config.g.dart';

@JsonSerializable(explicitToJson: true)
class AppConfig {
  final MainConfig mainConfig;
  final AppColor appColor;
  final List<MenuItem> items;
  AppConfig({
    required this.mainConfig,
    required this.appColor,
    this.items = const [],
  });

  factory AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);

  Map<String, dynamic> toJson() => _$AppConfigToJson(this);
}
