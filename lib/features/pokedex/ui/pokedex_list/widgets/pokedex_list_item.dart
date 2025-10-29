import 'package:caremixer_test/app_theme/app_theme.dart';
import 'package:caremixer_test/base_widgets/base_state_widgets.dart';
import 'package:caremixer_test/base_widgets/loaders/pokeball_loading_spinner.dart';
import 'package:caremixer_test/extensions.dart';
import 'package:caremixer_test/features/pokedex/domain/pokemon_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PokedexListItem extends BaseConsumerWidget {
  const PokedexListItem({super.key, required this.pokemon});

  final PokemonDetail pokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref, AppTheme appTheme) {
    return IntrinsicHeight(
      child: Card(
        color: appTheme.colours.corePaleMint,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  width: 96,
                  height: 96,
                  pokemon.imageUrl,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return PokeballLoadingSpinner();
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.error);
                  },
                ),
              ],
            ),
            Text(pokemon.name.capitalize(), style: appTheme.textStyles.label1),
          ],
        ),
      ),
    );
  }
}
