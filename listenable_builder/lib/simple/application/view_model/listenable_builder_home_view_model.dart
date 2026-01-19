import 'package:flutter/material.dart';

class ListenableBuilderHomeViewModel extends ChangeNotifier {

  int counter = 0;

  void increaseCounter() {
    counter++;
    notifyListeners();
  }

  void resetCounter() {
    counter = 0;
    notifyListeners();
  }
}