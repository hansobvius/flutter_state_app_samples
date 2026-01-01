import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


part 'riverpod_home_view_model.g.dart';

@riverpod
class RiverpodHomeViewModel extends _$RiverpodHomeViewModel {

  @override
  int build() => 0;

  void increaseCounter() {
    state = state + 1;
  }

  void resetCounter() {
    state = 0;
  }
}
