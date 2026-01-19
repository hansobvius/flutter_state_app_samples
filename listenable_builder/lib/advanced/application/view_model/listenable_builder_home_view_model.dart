import 'package:flutter/material.dart';
import 'package:listenable_builder/advanced/application/model/counter_model.dart';


class ListenableBuilderHomeViewModel extends ChangeNotifier{

  CounterModel counterModel = CounterModel();

  void increaseCounter() {
    counterModel = CounterModel(
      title: "increaseCounter",
      counterAmount: counterModel.counterAmount + 1
    );
    notifyListeners();
  }

  void resetCounter() {
    counterModel = CounterModel(
      title: "resetCounter",
      counterAmount: 0
    );
    notifyListeners();
  }
}