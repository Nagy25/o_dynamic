import 'package:json_annotation/json_annotation.dart';

part 'app_color.g.dart';

@JsonSerializable()
class AppColor {
  final String pageBg;
  final String headerBg;
  final String headerText;
  final String menuBg;
  final String menuItemBGColor;
  final String menuItemSelectedBgColor;
  final String listTitle;
  final String listItemBg;
  final String textColor;

  AppColor({
    required this.pageBg,
    required this.headerBg,
    required this.headerText,
    required this.menuBg,
    required this.menuItemBGColor,
    required this.menuItemSelectedBgColor,
    required this.listTitle,
    required this.listItemBg,
    required this.textColor,
  });

  factory AppColor.fromJson(Map<String, dynamic> json) =>
      _$AppColorFromJson(json);

  Map<String, dynamic> toJson() => _$AppColorToJson(this);
}
