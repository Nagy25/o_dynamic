import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:o_dynamic/core/helpers/type_def.dart';
import 'package:o_dynamic/data/json_loader/json_loader.dart';

abstract class IJsonLoader {
  static final instance = Provider<IJsonLoader>((ref) => JsonLoader());
  Future<JsonMap> loadJson();
}
