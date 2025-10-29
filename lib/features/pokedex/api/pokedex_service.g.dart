// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(pokedexService)
const pokedexServiceProvider = PokedexServiceProvider._();

final class PokedexServiceProvider
    extends $FunctionalProvider<PokedexService, PokedexService, PokedexService>
    with $Provider<PokedexService> {
  const PokedexServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokedexServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokedexServiceHash();

  @$internal
  @override
  $ProviderElement<PokedexService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PokedexService create(Ref ref) {
    return pokedexService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokedexService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokedexService>(value),
    );
  }
}

String _$pokedexServiceHash() => r'3c7c8ce826477384ed033d847ac7c62ca70843e4';

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
