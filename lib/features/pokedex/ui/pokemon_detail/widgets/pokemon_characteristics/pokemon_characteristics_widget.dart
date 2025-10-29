import 'package:caremixer_test/base_widgets/base_state_widgets.dart';
import 'package:caremixer_test/features/pokedex/domain/pokemon_details/pokemon_species.dart';
import 'package:caremixer_test/features/pokedex/ui/pokemon_detail/widgets/pokemon_characteristics/pokemon_characteristic_widget.dart';
import 'package:flutter/material.dart';

class PokemonCharacteristicsWidget extends BaseConsumerStatefulWidget {
  final PokemonSpecies pokemonSpecies;

  const PokemonCharacteristicsWidget({super.key, required this.pokemonSpecies});

  @override
  BaseConsumerState<PokemonCharacteristicsWidget> createState() =>
      _PokemonCharacteristicsWidgetState();
}

class _PokemonCharacteristicsWidgetState
    extends BaseConsumerState<PokemonCharacteristicsWidget> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) async {},
      child: Card(
        margin: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
        color: appTheme.colours.coreCoralRed,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Pokemon Characteristics",
                textAlign: TextAlign.center,
                style: appTheme.textStyles.label2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Container(
                  color: appTheme.colours.coreRustRed,
                  height: 1,
                ),
              ),
              Container(
                constraints: BoxConstraints(maxWidth: double.infinity),
                child: PokemonCharacteristicWidget(widget.pokemonSpecies),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
