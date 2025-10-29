import 'package:caremixer_test/base_widgets/base_state_widgets.dart';
import 'package:caremixer_test/base_widgets/fade_in.dart';
import 'package:caremixer_test/extensions.dart';
import 'package:caremixer_test/features/pokedex/domain/pokemon_detail.dart';
import 'package:caremixer_test/features/pokedex/domain/pokemon_details/pokemon_type.dart';
import 'package:caremixer_test/features/pokedex/ui/pokemon_detail/pokemon_detail_screen_view_model.dart';
import 'package:caremixer_test/features/pokedex/ui/pokemon_detail/widgets/pokedex_detail_toolbar_topcontent_widget.dart';
import 'package:caremixer_test/features/pokedex/ui/pokemon_detail/widgets/pokemon_abilities/pokemon_abilities_widget.dart';
import 'package:caremixer_test/features/pokedex/ui/pokemon_detail/widgets/pokemon_characteristics/pokemon_characteristics_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PokemonDetailScreen extends BaseConsumerStatefulWidget {
  const PokemonDetailScreen({super.key, required this.pokemon});

  final PokemonDetail pokemon;

  @override
  BaseConsumerState<PokemonDetailScreen> createState() =>
      _PokemonDetailScreenState();
}

class _PokemonDetailScreenState extends BaseConsumerState<PokemonDetailScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref
          .read(pokemonDetailScreenViewModelProvider.notifier)
          .init(widget.pokemon);
    });
  }

  List<Widget> getPokemonTypeWidgets() {
    List<Widget> widgets = [];

    for (PokemonType pokemonType in widget.pokemon.pokemonTypes) {
      widgets.add(
        FadeIn(
          fadeInDuration: 400,
          child: Container(
            margin: const EdgeInsets.only(right: 4, left: 4),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: pokemonType.getColor(appTheme),
              borderRadius: BorderRadius.circular(8),
            ),
            width: 72,
            child: Center(
              child: Text(
                pokemonType.name.capitalize().replaceAll("-", " "),
                style: appTheme.textStyles.captionBold,
              ),
            ),
          ),
        ),
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.white,
            toolbarHeight: 80,
            expandedHeight: MediaQuery.of(context).padding.top + 300,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: PokedexDetailToolbarTopContentWidget(
                pokemonDetail: widget.pokemon,
              ),
              titlePadding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
              ),
              centerTitle: true,
              title: Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: appTheme.colours.coreOrange,
                  constraints: const BoxConstraints(
                    minWidth: double.infinity,
                    minHeight: 80,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FadeIn(
                        fadeInDuration: 500,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Text(
                            widget.pokemon.name.capitalize(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      FadeIn(
                        fadeInDuration: 600,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Container(
                            width: 100,
                            height: 1,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: getPokemonTypeWidgets(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          /// Contained inside of a single item list
          SliverList(
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return Column(
                children: [
                  PokemonAbilitiesWidget(pokemonDetail: widget.pokemon),
                  PokemonCharacteristicsWidget(
                    pokemonSpecies: widget.pokemon.pokemonSpecies,
                  ),
                ],
              );
            }, childCount: 1),
          ),
        ],
      ),
    );
  }
}
