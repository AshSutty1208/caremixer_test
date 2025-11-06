import 'package:dart_mappable/dart_mappable.dart';
part 'pokemon_abilities.mapper.dart';

@MappableClass()
class PokemonAbilities with PokemonAbilitiesMappable {
  const PokemonAbilities({
    required this.isHidden,
    required this.slot,
    required this.abilityName,
    required this.abilityUrl,
  });

  final bool isHidden;
  final int slot;
  final String abilityName;
  final String abilityUrl;

  factory PokemonAbilities.fromApi(Map<String, dynamic> map) {
    return PokemonAbilities(
      isHidden: map['is_hidden'] ??= false,
      slot: map['slot'] ??= -1,
      abilityName: map['ability']['name'] ??= "",
      abilityUrl: map['ability']['url'] ??= "",
    );
  }
}
