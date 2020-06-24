import 'package:flutter/widgets.dart';

class NavigationRailProvider extends ChangeNotifier {
  int _seletedIndex = 0;

  int get seletedIndex => _seletedIndex;

  set seletedIndex(int seletedIndex) {
    _seletedIndex = seletedIndex;
    notifyListeners();
  }

  bool _exteded = false;

  bool get exteded => _exteded;

  set exteded(bool exteded) {
    _exteded = exteded;
    notifyListeners();
  }
}
