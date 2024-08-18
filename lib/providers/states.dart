import 'package:o_dynamic/models/app_config.dart';

abstract class ConfigState {}

class ConfigInitialState extends ConfigState {}

class ConfigLoadingState extends ConfigState {}

class ConfigLoadedState extends ConfigState {
  final AppConfig config;

  ConfigLoadedState({required this.config});
}

class ConfigErrorState extends ConfigState {
  final String? error;

  ConfigErrorState({this.error});
}
