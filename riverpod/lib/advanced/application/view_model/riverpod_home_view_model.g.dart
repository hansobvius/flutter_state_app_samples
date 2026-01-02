// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod_home_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RiverpodHomeViewModel)
final riverpodHomeViewModelProvider = RiverpodHomeViewModelProvider._();

final class RiverpodHomeViewModelProvider
    extends $NotifierProvider<RiverpodHomeViewModel, CounterModel> {
  RiverpodHomeViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'riverpodHomeViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$riverpodHomeViewModelHash();

  @$internal
  @override
  RiverpodHomeViewModel create() => RiverpodHomeViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CounterModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CounterModel>(value),
    );
  }
}

String _$riverpodHomeViewModelHash() =>
    r'91cd3399c8237bd7b227a59f61ed75fe8c7a29a2';

abstract class _$RiverpodHomeViewModel extends $Notifier<CounterModel> {
  CounterModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<CounterModel, CounterModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CounterModel, CounterModel>,
              CounterModel,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
