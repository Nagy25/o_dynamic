// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppConfig _$AppConfigFromJson(Map<String, dynamic> json) => AppConfig(
      mainConfig:
          MainConfig.fromJson(json['mainConfig'] as Map<String, dynamic>),
      appColor: AppColor.fromJson(json['appColor'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AppConfigToJson(AppConfig instance) => <String, dynamic>{
      'mainConfig': instance.mainConfig.toJson(),
      'appColor': instance.appColor.toJson(),
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
