// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(pokedexRepository)
const pokedexRepositoryProvider = PokedexRepositoryProvider._();

final class PokedexRepositoryProvider
    extends
        $FunctionalProvider<
          PokedexRepository,
          PokedexRepository,
          PokedexRepository
        >
    with $Provider<PokedexRepository> {
  const PokedexRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokedexRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokedexRepositoryHash();

  @$internal
  @override
  $ProviderElement<PokedexRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PokedexRepository create(Ref ref) {
    return pokedexRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokedexRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokedexRepository>(value),
    );
  }
}

String _$pokedexRepositoryHash() => r'2c45fc1ab7e3029de0ba29e1d8dd6b08c58a115f';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
