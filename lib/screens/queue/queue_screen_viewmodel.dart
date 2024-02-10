import 'package:flutter/material.dart';
import 'package:some_application/database_manager.dart';
import 'package:some_application/entities/screen_data.dart';

class QueueScreenViewModel with ChangeNotifier {
  String _mainTitle = "";
  String _subTitle = "";
  String _imageAssetPath = "";

  get mainTitle => _mainTitle;
  get subTitle => _subTitle;
  get imageAssetPath => _imageAssetPath;

  void nextPage() {
    final ScreenData? next = DatabaseManager.getNext();
    _mainTitle = "";
    _subTitle = "";
    _imageAssetPath = "";
    notifyListeners();
  }

}
