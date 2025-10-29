import 'package:caremixer_test/app_theme/app_theme.dart';
import 'package:caremixer_test/base_api/api_status_enum.dart';
import 'package:caremixer_test/base_widgets/base_state_widgets.dart';
import 'package:caremixer_test/base_widgets/loaders/pokeball_loading_spinner.dart';
import 'package:caremixer_test/extensions.dart';
import 'package:caremixer_test/features/pokedex/domain/pokemon_details/pokemon_species.dart';
import 'package:caremixer_test/features/pokedex/ui/pokemon_detail/pokemon_detail_screen_view_model.dart';
import 'package:caremixer_test/features/pokedex/domain/pokemon_details/pokemon_species_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PokemonCharacteristicWidget extends BaseConsumerWidget {
  final PokemonSpecies pokemonSpecies;

  const PokemonCharacteristicWidget(this.pokemonSpecies, {super.key});

  Widget getCharacterLineItem(
    String leftText,
    String rightText,
    AppTheme appTheme,
  ) {
    return Container(
      constraints: BoxConstraints(maxWidth: double.infinity),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Text(leftText, style: appTheme.textStyles.label1)),
          Expanded(
            child: Text(
              rightText.capitalize().replaceAll("-", " "),
              style: appTheme.textStyles.body1,
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }

  Widget getCharacteristicsDetailWidget(
    BuildContext context,
    AppTheme appTheme,
    PokemonSpeciesDetail? pokemonSpeciesDetail,
  ) {
    return Column(
      spacing: 8,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Description", style: appTheme.textStyles.label1),
              Text(
                pokemonSpeciesDetail?.description.replaceAll("\n", " ") ??
                    "None",
                style: appTheme.textStyles.body1,
              ),
            ],
          ),
        ),
        getCharacterLineItem(
          "Habitat",
          pokemonSpeciesDetail?.habitat ?? "None",
          appTheme,
        ),
        getCharacterLineItem(
          "Growth Rate",
          pokemonSpeciesDetail?.growthRate ?? "None",
          appTheme,
        ),
        getCharacterLineItem(
          "Shape",
          pokemonSpeciesDetail?.shape ?? "None",
          appTheme,
        ),
        getCharacterLineItem(
          "Capture Rate",
          pokemonSpeciesDetail?.captureRate.toString() ?? "None",
          appTheme,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref, AppTheme appTheme) {
    final pokemonSpeciesDetail = ref
        .watch(pokemonDetailScreenViewModelProvider)
        .pokemonSpeciesDetail;

    final getPokemonSpeciesApiStatus = ref
        .watch(pokemonDetailScreenViewModelProvider)
        .getPokemonSpeciesApiStatus;

    return switch (getPokemonSpeciesApiStatus) {
      ApiStatusEnum.success => getCharacteristicsDetailWidget(
        context,
        appTheme,
        pokemonSpeciesDetail,
      ),
      ApiStatusEnum.loading => Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Center(
          child: PokeballLoadingSpinner(
            text: "Fetching Pokemon Characteristics...",
          ),
        ),
      ),
      ApiStatusEnum.failed => Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Center(
          child: Text(
            "Failed to fetch Pokemon Characteristics.",
            style: appTheme.textStyles.label1.copyWith(
              color: appTheme.colours.coreBrickRed,
            ),
          ),
        ),
      ),
      _ => const SizedBox.shrink(),
    };
  }
}
