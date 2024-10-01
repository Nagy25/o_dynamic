import 'package:flutter/material.dart';
import 'package:o_dynamic/core/helpers/enums.dart';
import 'package:o_dynamic/models/menu_item.dart';

abstract class MyWidget {
  final ItemComponent itemComponent;
  MyWidget({required this.itemComponent});
  Widget render(MenuItem menuItem);
}

class SupportedClass {
  final Map<ItemComponent, MyWidget Function()> _widgetMap = {
    ItemComponent.posts: () => PostsScreen(),
    ItemComponent.externalPage: () => WebViewScreen(),
  };

  Widget getWidget(MenuItem menuItem) {
    final widgetBuilder = _widgetMap[menuItem.component];

    return widgetBuilder?.call().render(menuItem) ??
        const Text('Not Implemented yet');
  }
}

class PostsScreen extends MyWidget {
  PostsScreen({super.itemComponent = ItemComponent.posts});
  @override
  Widget render(MenuItem menuItem) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Posts"),
        ),
        body: Text(menuItem.title));
  }
}

class WebViewScreen extends MyWidget {
  WebViewScreen({super.itemComponent = ItemComponent.externalPage});
  @override
  Widget render(MenuItem menuItem) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("webView"),
        ),
        body: Text(menuItem.title));
  }
}
