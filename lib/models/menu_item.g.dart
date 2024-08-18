// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuItem _$MenuItemFromJson(Map<String, dynamic> json) => MenuItem(
      component: $enumDecode(_$ItemComponentEnumMap, json['component'],
          unknownValue: ItemComponent.unknown),
      parameters: json['parameters'] as Map<String, dynamic>,
      title: json['title'] as String,
    );

Map<String, dynamic> _$MenuItemToJson(MenuItem instance) => <String, dynamic>{
      'component': _$ItemComponentEnumMap[instance.component]!,
      'parameters': instance.parameters,
      'title': instance.title,
    };

const _$ItemComponentEnumMap = {
  ItemComponent.posts: 'posts',
  ItemComponent.externalPage: 'external-page',
  ItemComponent.unknown: 'unknown',
};
