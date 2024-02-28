import 'dart:collection';

import 'package:some_application/entities/screen_data.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseManager {
  static Database? _db;
  static Queue? queue;

  static int lastIndex = 0;

  static const String queueTable = 'queue';

  static Future<void> init() async {
    String path = await getDatabasesPath();
    path = '$path/my_database.db';
    _db = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          'CREATE TABLE $queueTable(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, subtitle TEXT, imageAsset TEXT)',
        );
        await db.insert(queueTable, {
          'id': 2,
          'title': 'third',
          'subtitle': 'some info',
          'imageAsset': ''
        });
        await db.insert(queueTable, {
          'id': 1,
          'title': 'second',
          'subtitle': 'some info',
          'imageAsset': ''
        });
        await db.insert(queueTable, {
          'id': 0,
          'title': 'first',
          'subtitle': 'some info',
          'imageAsset': ''
        });
      },
    );
  }

  static Future<ScreenData?> readNextData() async {
    final Map<String, Object?> data = (await _db!.query(queueTable, where: "id LIKE $lastIndex"))[0];
    return ScreenData.fromMap(data);
  }

  static void deleteLastData() async {
    await _db!.delete(queueTable, where: "id LIKE $lastIndex");
  }
}