import 'package:caremixer_test/base_api/api_status_enum.dart';
import 'package:caremixer_test/features/pokedex/domain/pokemon_details/pokemon_species_detail.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'pokemon_detail_screen_state.mapper.dart';

@MappableClass()
class PokemonDetailScreenState with PokemonDetailScreenStateMappable {
  const PokemonDetailScreenState({
    this.getPokemonSpeciesApiStatus = ApiStatusEnum.notStarted,
    this.pokemonSpeciesDetail,
  });

  final ApiStatusEnum getPokemonSpeciesApiStatus;
  final PokemonSpeciesDetail? pokemonSpeciesDetail;

  static const fromMap = PokemonDetailScreenStateMapper.fromMap;
  static const fromJson = PokemonDetailScreenStateMapper.fromJson;
}
