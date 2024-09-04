import 'dart:convert';

import 'package:flutter/services.dart';

class JsonUtility {
  static Future<List<dynamic>> readJsonFromAsset(String path) async {
    String value = await rootBundle.loadString(path);
    List<dynamic> decodedJson = jsonDecode(value);
    return decodedJson;
  }
}
