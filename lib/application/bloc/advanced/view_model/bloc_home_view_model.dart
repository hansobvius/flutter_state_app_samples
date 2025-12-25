import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_app_samples/application/bloc/advanced/model/counter_model.dart';

class BlocHomeViewModel extends Cubit<CounterModel> {
  BlocHomeViewModel(super.initialState);

  void increaseCounter() {
    emit(CounterModel(
      title: "increaseCounter",
      counterAmount: state.counterAmount + 1
    ));
  }

  void resetCounter() {
    emit(CounterModel(title: "resetCounter", counterAmount: 0));
  }
}