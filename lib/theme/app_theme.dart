import 'package:flutter/material.dart';
import 'package:o_dynamic/core/helpers/extensions.dart';
import 'package:o_dynamic/models/app_color.dart';

class AppTheme extends StatelessWidget {
  final AppColor appColor;
  final Widget child;
  const AppTheme({super.key, required this.appColor, required this.child});

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
          scaffoldBackgroundColor: appColor.pageBg.toColor,
          appBarTheme: AppBarTheme(
              color: appColor.headerBg.toColor,
              titleTextStyle: TextStyle(
                color: appColor.headerText.toColor,
              )),
          drawerTheme: DrawerThemeData(
            backgroundColor: appColor.menuBg.toColor,
          ),
          listTileTheme: ListTileThemeData(
            titleTextStyle: TextStyle(
              color: appColor.listTitle.toColor,
            ),
            iconColor: appColor.menuItemBGColor.toColor,
          ),
          textTheme: const TextTheme().apply(
            bodyColor: appColor.textColor.toColor,
            displayColor: appColor.textColor.toColor,
          ),
        ),
        child: child);
  }
}
