import 'dart:collection';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:some_application/entities/screen_data.dart';

class DatabaseManager {
  static SharedPreferences? prefs;
  static Queue? queue;

  static void init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static ScreenData? getNext() {
    prefs!.get(key)
  }
}