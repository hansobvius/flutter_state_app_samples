import 'package:flutter_bloc/flutter_bloc.dart';

class BlocHomeViewModel extends Cubit<int> {
  BlocHomeViewModel(super.initialState);

  void increaseCounter() {
    emit(state + 1);
  }

  void resetCounter() {
    emit(0);
  }
}