import 'package:mobx/mobx.dart';
import 'package:state_app_samples/application/mobx/advanced/counter_model.dart';

part 'mobx_home_view_model.g.dart';

class MobxHomeViewModel = _MobxHomeViewModel with _$MobxHomeViewModel;

abstract class _MobxHomeViewModel with Store {
  @observable
  CounterModel counterModel = CounterModel();

  @action
  void increaseCounter() {
    counterModel = CounterModel(
      title: "increaseCounter",
      counterAmount: counterModel.counterAmount + 1,
    );
  }

  @action
  void resetCounter() {
    counterModel = CounterModel(title: "resetCounter", counterAmount: 0);
  }
}
