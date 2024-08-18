import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:o_dynamic/models/app_config.dart';
import 'package:o_dynamic/models/main_config.dart';
import 'package:o_dynamic/providers/config_notifier.dart';
import 'package:o_dynamic/providers/states/states.dart';

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

extension ProviderEx on StateNotifierProviderRef {
  MainConfig get mainConfig =>
      (read(ConfigNotifier.provider) as ConfigLoadedState).config.mainConfig;
}

extension ProviderFutuEx on FutureProviderRef {
  MainConfig get mainConfig =>
      (read(ConfigNotifier.provider) as ConfigLoadedState).config.mainConfig;
}
