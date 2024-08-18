import 'package:json_annotation/json_annotation.dart';
import 'package:o_dynamic/core/helpers/enums.dart';

part 'menu_item.g.dart';

@JsonSerializable()
class MenuItem {
  @JsonKey(unknownEnumValue: ItemComponent.unknown)
  final ItemComponent component;
  final Map<String, dynamic> parameters;
  final String title;

  MenuItem({
    required this.component,
    required this.parameters,
    required this.title,
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) =>
      _$MenuItemFromJson(json);

  Map<String, dynamic> toJson() => _$MenuItemToJson(this);
}
