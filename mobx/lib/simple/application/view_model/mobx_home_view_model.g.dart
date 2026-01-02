// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MobxHomeViewModel on MobxHomeViewModelState, Store {
  late final _$counterAtom = Atom(
    name: 'MobxHomeViewModelState.counter',
    context: context,
  );

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$MobxHomeViewModelStateActionController = ActionController(
    name: 'MobxHomeViewModelState',
    context: context,
  );

  @override
  void increaseCounter() {
    final _$actionInfo = _$MobxHomeViewModelStateActionController.startAction(
      name: 'MobxHomeViewModelState.increaseCounter',
    );
    try {
      return super.increaseCounter();
    } finally {
      _$MobxHomeViewModelStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetCounter() {
    final _$actionInfo = _$MobxHomeViewModelStateActionController.startAction(
      name: 'MobxHomeViewModelState.resetCounter',
    );
    try {
      return super.resetCounter();
    } finally {
      _$MobxHomeViewModelStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter}
    ''';
  }
}
