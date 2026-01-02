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
    extends $NotifierProvider<RiverpodHomeViewModel, int> {
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
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$riverpodHomeViewModelHash() =>
    r'ba8c97dba15209d84b67c2c03bc41f60ee4d65d6';

abstract class _$RiverpodHomeViewModel extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
