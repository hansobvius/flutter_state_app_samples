import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:state_app_samples/advanced/application/model/counter_model.dart';

part 'riverpod_home_view_model.g.dart';

@riverpod
class RiverpodHomeViewModel extends _$RiverpodHomeViewModel {

  @override
  CounterModel build() => CounterModel();

  void increaseCounter() {
    state = CounterModel(
      title: "increaseCounter",
      counterAmount: state.counterAmount + 1,
    );
    debugPrint(
      'RiverpodHomeViewModelState: increaseCounter ${state.counterAmount}',
    );
  }

  void resetCounter() {
    state = CounterModel(title: "resetCounter", counterAmount: 0);
    debugPrint(
      'RiverpodHomeViewModelState: resetCounter ${state.counterAmount}',
    );
  }
}
