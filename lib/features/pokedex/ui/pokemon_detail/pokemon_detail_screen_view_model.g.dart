// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_screen_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(PokemonDetailScreenViewModel)
const pokemonDetailScreenViewModelProvider =
    PokemonDetailScreenViewModelProvider._();

final class PokemonDetailScreenViewModelProvider
    extends
        $NotifierProvider<
          PokemonDetailScreenViewModel,
          PokemonDetailScreenState
        > {
  const PokemonDetailScreenViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonDetailScreenViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonDetailScreenViewModelHash();

  @$internal
  @override
  PokemonDetailScreenViewModel create() => PokemonDetailScreenViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokemonDetailScreenState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokemonDetailScreenState>(value),
    );
  }
}

String _$pokemonDetailScreenViewModelHash() =>
    r'02bc851a58d3f22e073b3bc74ab9b91f0f517f10';

abstract class _$PokemonDetailScreenViewModel
    extends $Notifier<PokemonDetailScreenState> {
  PokemonDetailScreenState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<PokemonDetailScreenState, PokemonDetailScreenState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PokemonDetailScreenState, PokemonDetailScreenState>,
              PokemonDetailScreenState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
