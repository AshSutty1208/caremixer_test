// ignore_for_file: unused_import

import 'package:caremixer_test/base_api/api_status_enum.dart';
import 'package:caremixer_test/base_api/base_service.dart';
import 'package:caremixer_test/features/pokedex/domain/pokedex_repository.dart';
import 'package:caremixer_test/features/pokedex/domain/pokemon_detail.dart';
import 'package:caremixer_test/features/pokedex/domain/pokemon_details/pokemon_species_detail.dart';
import 'package:caremixer_test/features/pokedex/ui/pokedex_list/state/pokedex_list_screen_state.dart';
import 'package:caremixer_test/features/pokedex/ui/pokemon_detail/state/pokemon_detail_screen_state.dart';
import 'package:caremixer_test/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_detail_screen_view_model.g.dart';

@riverpod
class PokemonDetailScreenViewModel extends _$PokemonDetailScreenViewModel {
  PokedexRepository get _pokedexRepository =>
      ref.watch(pokedexRepositoryProvider);

  @override
  PokemonDetailScreenState build() => PokemonDetailScreenState();

  void init(PokemonDetail pokemonDetail) {
    _callGetPokemonSpecies(pokemonDetail.pokemonSpecies.url);
  }

  Future<ApiResult?> _callGetPokemonSpecies(String speciesUrl) async {
    try {
      state = state.copyWith(getPokemonSpeciesApiStatus: ApiStatusEnum.loading);
      final result = await _pokedexRepository.getPokemonSpecies(speciesUrl);

      if (result is Success<PokemonSpeciesDetail>) {
        state = state.copyWith(
          getPokemonSpeciesApiStatus: ApiStatusEnum.success,
          pokemonSpeciesDetail: result.data,
        );
      } else if (result is Failed) {
        state = state.copyWith(
          getPokemonSpeciesApiStatus: ApiStatusEnum.failed,
        );
      }
    } catch (e, s) {
      logException('Pokemon Detail Screen View Model', e, stackTrace: s);
      state = state.copyWith(getPokemonSpeciesApiStatus: ApiStatusEnum.failed);
    }

    return null;
  }

  // Future<ApiResult?> _callGetPokemon(int page) async {
  //   try {
  //     state = state.copyWith(getPokemonApiStatus: ApiStatusEnum.loading);
  //     final result = await _pokedexRepository.getPokemon(page);

  //     if (result is Success<List<PokemonDetail>>) {
  //       logDebug('Pokedex List Screen View Model', 'Result: ${result.data}');

  //       final newPokemon = [...state.pokemon, ...result.data];
  //       newPokemon.sort((a, b) => a.order.compareTo(b.order));

  //       state = state.copyWith(
  //         currentPage: page,
  //         pokemon: [...state.pokemon, ...result.data],
  //         getPokemonApiStatus: ApiStatusEnum.success,
  //       );
  //     } else if (result is Failed<List<PokemonDetail>>) {
  //       state = state.copyWith(getPokemonApiStatus: ApiStatusEnum.failed);
  //     }
  //   } catch (e, s) {
  //     logException('Pokedex List Screen View Model', e, stackTrace: s);
  //     state = state.copyWith(getPokemonApiStatus: ApiStatusEnum.failed);
  //   }

  //   return null;
  // }

  // void onRefresh() {
  //   state = state.copyWith(
  //     currentPage: 1,
  //     pokemon: [],
  //     getPokemonApiStatus: ApiStatusEnum.notStarted,
  //   );
  //   _callGetPokemon(1);
  // }

  // void hitBottomOfList() {
  //   _callGetPokemon(state.currentPage + 1);
  // }
}
