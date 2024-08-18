import 'package:flutter/material.dart';
import 'package:o_dynamic/core/helpers/enums.dart';
import 'package:o_dynamic/models/menu_item.dart';
import 'package:o_dynamic/ui/screens/dynamic/posts_screen.dart';
import 'package:o_dynamic/ui/screens/dynamic/web_view_screen.dart';

class DaynmicScreen extends StatelessWidget {
  const DaynmicScreen({super.key});

  factory DaynmicScreen.fromItem(ItemComponent item, MenuItem menuItem) {
    switch (item) {
      case ItemComponent.posts:
        return PostsScreen(menuItem: menuItem);
      case ItemComponent.externalPage:
        return const WebViewScreen();
      case ItemComponent.unknown:
        return const DaynmicScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('unknown pleas implement'),
      ),
    );
  }
}
