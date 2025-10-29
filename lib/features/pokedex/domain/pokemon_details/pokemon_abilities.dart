/// Class that represents a Pokemons Specific Detail
import 'package:caremixer_test/features/pokedex/domain/pokemon_details/pokemon_ability_detail.dart';
import 'package:dart_mappable/dart_mappable.dart';
part 'pokemon_abilities.mapper.dart';

@MappableClass()
class PokemonAbilities with PokemonAbilitiesMappable {
  const PokemonAbilities({
    required this.isHidden,
    required this.slot,
    required this.pokemonAbilityDetail,
  });

  final bool isHidden;
  final int slot;
  final PokemonAbilityDetail pokemonAbilityDetail;

  factory PokemonAbilities.fromApi(Map<String, dynamic> map) {
    return PokemonAbilities(
      isHidden: map['is_hidden'] ??= false,
      slot: map['slot'] ??= -1,
      pokemonAbilityDetail: PokemonAbilityDetail.fromApi(map['ability']),
    );
  }
}
