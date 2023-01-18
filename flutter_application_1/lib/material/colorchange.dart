import 'package:flutter/material.dart';

class ColorState with ChangeNotifier {
  bool _isOrange = false;

  bool get getIsOrange {
    return _isOrange;
  }

  Color get getColor {
    return _isOrange ? Colors.deepOrange : Colors.deepPurple;
  }

  set setColor(bool value) {
    _isOrange = value;
    notifyListeners();
  }
}
