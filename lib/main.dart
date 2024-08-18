import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:o_dynamic/ui/screens/main_screen.dart';

void main() {
  runApp(const ProviderScope(child: MaterialApp(home: MainScreen())));
}
