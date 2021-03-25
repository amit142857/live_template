

import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{
  int _count = 0;  //setter

  int get getCount => _count;  //getter

  void incrementCount() {
    _count++;
    notifyListeners();
  }
}