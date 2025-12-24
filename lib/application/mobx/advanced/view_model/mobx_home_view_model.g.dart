// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MobxHomeViewModel on _MobxHomeViewModel, Store {
  late final _$counterModelAtom = Atom(
    name: '_MobxHomeViewModel.counterModel',
    context: context,
  );

  @override
  CounterModel get counterModel {
    _$counterModelAtom.reportRead();
    return super.counterModel;
  }

  @override
  set counterModel(CounterModel value) {
    _$counterModelAtom.reportWrite(value, super.counterModel, () {
      super.counterModel = value;
    });
  }

  late final _$_MobxHomeViewModelActionController = ActionController(
    name: '_MobxHomeViewModel',
    context: context,
  );

  @override
  void increaseCounter() {
    final _$actionInfo = _$_MobxHomeViewModelActionController.startAction(
      name: '_MobxHomeViewModel.increaseCounter',
    );
    try {
      return super.increaseCounter();
    } finally {
      _$_MobxHomeViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetCounter() {
    final _$actionInfo = _$_MobxHomeViewModelActionController.startAction(
      name: '_MobxHomeViewModel.resetCounter',
    );
    try {
      return super.resetCounter();
    } finally {
      _$_MobxHomeViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counterModel: ${counterModel}
    ''';
  }
}
