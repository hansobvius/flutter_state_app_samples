// import 'package:flutter/foundation.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:state_app_samples/application/riverpod/advanced/model/counter_model.dart';

// part 'riverpod_home_view_model.g.dart';

// @riverpod
// class RiverpodHomeViewModel extends _$RiverpodHomeViewModel {

//   @override
//   CounterModel build() => CounterModel();

//   void increaseCounter() {
//     state = state(
//       title: "increaseCounter",
//       counterAmount: counterModel.counterAmount + 1,
//     );
//     debugPrint(
//       'MobxHomeViewModelState: increaseCounter ${counterModel.counterAmount}',
//     );
//   }

//   void resetCounter() {
//     state = CounterModel(title: "resetCounter", counterAmount: 0);
//     debugPrint(
//       'MobxHomeViewModelState: resetCounter ${counterModel.counterAmount}',
//     );
//   }
// }
