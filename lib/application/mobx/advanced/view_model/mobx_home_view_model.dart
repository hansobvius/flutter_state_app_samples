import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:state_app_samples/application/mobx/advanced/model/counter_model.dart';

part 'mobx_home_view_model.g.dart';

class MobxHomeViewModel = MobxHomeViewModelState with _$MobxHomeViewModel;

abstract class MobxHomeViewModelState with Store {
  @observable
  CounterModel counterModel = CounterModel();

  @action
  void increaseCounter() {
    counterModel = CounterModel(
      title: "increaseCounter",
      counterAmount: counterModel.counterAmount + 1,
    );
    debugPrint(
      'MobxHomeViewModelState: increaseCounter ${counterModel.counterAmount}',
    );
  }

  @action
  void resetCounter() {
    counterModel = CounterModel(title: "resetCounter", counterAmount: 0);
    debugPrint(
      'MobxHomeViewModelState: resetCounter ${counterModel.counterAmount}',
    );
  }
}
