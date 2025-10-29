import 'package:caremixer_test/base_widgets/base_state_widgets.dart';
import 'package:caremixer_test/extensions.dart';
import 'package:caremixer_test/features/pokedex/domain/pokemon_detail.dart';
import 'package:caremixer_test/features/pokedex/domain/pokemon_details/pokemon_abilities.dart';
import 'package:flutter/material.dart';

class PokemonAbilitiesWidget extends BaseConsumerStatefulWidget {
  final PokemonDetail pokemonDetail;

  const PokemonAbilitiesWidget({super.key, required this.pokemonDetail});

  @override
  BaseConsumerState<PokemonAbilitiesWidget> createState() =>
      _PokemonAbilitiesWidgetState();
}

class _PokemonAbilitiesWidgetState
    extends BaseConsumerState<PokemonAbilitiesWidget> {
  @override
  Widget build(BuildContext context) {
    return _pokemonAbilityDetailsWidget(context);
  }

  List<Widget> _getPokemonAbilityWidgets(BuildContext context) {
    List<Widget> widgets = [];
    for (PokemonAbilities pokemonAbilities
        in widget.pokemonDetail.pokemonAbilities) {
      widgets.add(
        Text(
          pokemonAbilities.pokemonAbilityDetail.name.capitalize().replaceAll(
            "-",
            " ",
          ),
          style: appTheme.textStyles.body1,
        ),
      );
    }

    if (widgets.isEmpty) {
      widgets.add(
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            "No Abilities To Display...",
            textAlign: TextAlign.left,
            style: appTheme.textStyles.body1,
          ),
        ),
      );
    }
    return widgets;
  }

  Widget _pokemonAbilityDetailsWidget(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) async {},
      child: Card(
        margin: EdgeInsets.all(16),
        color: appTheme.colours.coreCoralRed,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Pokemon Abilities",
                textAlign: TextAlign.center,
                style: appTheme.textStyles.label2,
              ),
              Container(color: appTheme.colours.coreRustRed, height: 1),
              Column(
                spacing: 8,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: _getPokemonAbilityWidgets(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
