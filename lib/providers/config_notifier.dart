import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:o_dynamic/data/json_loader/i_json_loader.dart';
import 'package:o_dynamic/models/app_config.dart';
import 'package:o_dynamic/providers/states.dart';

class ConfigNotifier extends StateNotifier<ConfigState> {
  static final provider =
      StateNotifierProvider<ConfigNotifier, ConfigState>((ref) {
    return ConfigNotifier(loader: ref.read(IJsonLoader.instance));
  });

  final IJsonLoader loader;
  ConfigNotifier({required this.loader}) : super(ConfigInitialState()) {
    _load();
  }

  Future<void> _load() async {
    try {
      state = ConfigLoadingState();
      final data = await loader.loadJson();
      final config = AppConfig.fromJson(data);
      state = ConfigLoadedState(config: config);
    } catch (e) {
      state = ConfigErrorState(error: e.toString());
    }
  }
}
