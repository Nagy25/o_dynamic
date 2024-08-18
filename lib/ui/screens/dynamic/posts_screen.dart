import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:o_dynamic/models/menu_item.dart';
import 'package:o_dynamic/ui/screens/dynamic/daynmic_screen.dart';

class PostsScreen extends DaynmicScreen {
  final MenuItem menuItem;
  const PostsScreen({super.key, required this.menuItem});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Consumer(builder: (_, ref, __) {
      return Scaffold();
    });
  }
}
