// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_search_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(PokedexSearchScreenViewModel)
const pokedexSearchScreenViewModelProvider =
    PokedexSearchScreenViewModelProvider._();

final class PokedexSearchScreenViewModelProvider
    extends
        $NotifierProvider<
          PokedexSearchScreenViewModel,
          PokedexSearchScreenState
        > {
  const PokedexSearchScreenViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokedexSearchScreenViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokedexSearchScreenViewModelHash();

  @$internal
  @override
  PokedexSearchScreenViewModel create() => PokedexSearchScreenViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokedexSearchScreenState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokedexSearchScreenState>(value),
    );
  }
}

String _$pokedexSearchScreenViewModelHash() =>
    r'ce342472620ab903c249ad7f8c72ce13f43382f8';

abstract class _$PokedexSearchScreenViewModel
    extends $Notifier<PokedexSearchScreenState> {
  PokedexSearchScreenState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<PokedexSearchScreenState, PokedexSearchScreenState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PokedexSearchScreenState, PokedexSearchScreenState>,
              PokedexSearchScreenState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
