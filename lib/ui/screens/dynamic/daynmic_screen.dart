import 'package:flutter/material.dart';
import 'package:o_dynamic/core/helpers/enums.dart';
import 'package:o_dynamic/models/menu_item.dart';
import 'package:o_dynamic/ui/screens/dynamic/posts_screen.dart';
import 'package:o_dynamic/ui/screens/dynamic/web_view_screen.dart';

class DaynmicScreen extends StatelessWidget {
  final MenuItem menuItem;
  const DaynmicScreen({super.key, required this.menuItem});

  factory DaynmicScreen.fromItem(ItemComponent item, MenuItem menuItem) {
    switch (item) {
      case ItemComponent.posts:
        return PostsScreen(menuItem: menuItem);
      case ItemComponent.externalPage:
        return WebViewScreen(
          menuItem: menuItem,
        );
      case ItemComponent.unknown:
        return DaynmicScreen(
          menuItem: menuItem,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('unknown pleas implement ${menuItem.component.name}'),
      ),
    );
  }
}
