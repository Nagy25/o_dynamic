import 'package:flutter/material.dart';

extension SugarExt on BuildContext {
  //* MediaQuery
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  //* Dimensions Extensions
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}
