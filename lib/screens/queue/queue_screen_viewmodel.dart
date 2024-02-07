import 'package:flutter/material.dart';
import 'package:some_application/database_manager.dart';

class QueueScreenViewModel with ChangeNotifier {
  Future<Record> popQueue() async {
    return DatabaseManager.getQueue()
  }
}
