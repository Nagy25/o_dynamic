import 'package:flutter/material.dart';

extension SugarExt on BuildContext {
  //* MediaQuery
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  //* Dimensions Extensions
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}

extension StringColor on String {
  Color get toColor {
    try {
      return Color(int.parse(replaceFirst('#', '0xff')));
    } catch (e) {
      throw UnimplementedError('cannot implement color convert for $this');
    }
  }
}
