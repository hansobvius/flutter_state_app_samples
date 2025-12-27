import 'package:mobx/mobx.dart';

part 'mobx_home_view_model.g.dart';

class MobxHomeViewModel = MobxHomeViewModelState with _$MobxHomeViewModel;

abstract class MobxHomeViewModelState with Store {
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
