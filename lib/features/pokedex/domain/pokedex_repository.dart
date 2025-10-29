import 'package:caremixer_test/base_api/base_service.dart';
import 'package:caremixer_test/features/pokedex/api/pokedex_service.dart';
import 'package:caremixer_test/features/pokedex/domain/pokemon_detail.dart';
import 'package:caremixer_test/features/pokedex/domain/pokemon_details/pokemon_species_detail.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokedex_repository.g.dart';

@riverpod
PokedexRepository pokedexRepository(Ref ref) {
  return PokedexRepository(ref);
}

class PokedexRepository {
  final Ref ref;
  PokedexRepository(this.ref);

  PokedexService get _pokedexService => ref.watch(pokedexServiceProvider);

  Future<ApiResult<List<PokemonDetail>>> getPokemon(int page) async {
    return await _pokedexService.getPokemon(page);
  }

  Future<ApiResult<PokemonSpeciesDetail>> getPokemonSpecies(
    String speciesUrl,
  ) async {
    return await _pokedexService.getPokemonSpecies(speciesUrl);
  }
}
