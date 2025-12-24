import 'package:mobx/mobx.dart';

part 'mobx_home_view_model.g.dart';

class MobxHomeViewModel = _MobxHomeViewModel with _$MobxHomeViewModel;

abstract class _MobxHomeViewModel with Store {

  @observable
  int counter = 0;

  @action
  void increaseCounter() {
    counter = counter + 1;
  }

  @action
  void resetCounter() {
    counter = 0;
  }
}