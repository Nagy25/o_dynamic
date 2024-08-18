import 'package:flutter/material.dart';
import 'package:o_dynamic/models/menu_item.dart';
import 'package:o_dynamic/ui/screens/dynamic/daynmic_screen.dart';

class ContentScreen extends StatelessWidget {
  final MenuItem menuItem;
  const ContentScreen({super.key, required this.menuItem});

  @override
  Widget build(BuildContext context) {
    return DaynmicScreen.fromItem(menuItem.component, menuItem);
  }
}
