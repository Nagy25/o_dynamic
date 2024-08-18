import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:o_dynamic/core/helpers/type_def.dart';
import 'package:o_dynamic/data/json_loader/i_json_loader.dart';

class JsonLoader implements IJsonLoader {
  @override
  Future<JsonMap> loadJson() async {
    String data = await rootBundle.loadString('assets/config.json');
    final jsonResult = json.decode(data);
    return jsonResult as JsonMap;
  }
}
