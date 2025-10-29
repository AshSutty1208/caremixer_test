// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_list_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(PokedexListScreenViewModel)
const pokedexListScreenViewModelProvider =
    PokedexListScreenViewModelProvider._();

final class PokedexListScreenViewModelProvider
    extends
        $NotifierProvider<PokedexListScreenViewModel, PokedexListScreenState> {
  const PokedexListScreenViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokedexListScreenViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokedexListScreenViewModelHash();

  @$internal
  @override
  PokedexListScreenViewModel create() => PokedexListScreenViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokedexListScreenState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokedexListScreenState>(value),
    );
  }
}

String _$pokedexListScreenViewModelHash() =>
    r'9b5c831a799786ef90807dab9ce1fcc6a8945bc9';

abstract class _$PokedexListScreenViewModel
    extends $Notifier<PokedexListScreenState> {
  PokedexListScreenState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<PokedexListScreenState, PokedexListScreenState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PokedexListScreenState, PokedexListScreenState>,
              PokedexListScreenState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
