import 'dart:collection';

import 'package:shared_preferences/shared_preferences.dart';

class DatabaseManager {
  static SharedPreferences? prefs;
  static Queue? queue;

  static void init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Queue getQueue() {
    final List<String> queue = prefs!.getStringList("queue") ?? [];
    return Queue.of(queue);
  }

  static 

}