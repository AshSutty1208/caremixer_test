import 'package:caremixer_test/base_widgets/base_state_widgets.dart';
import 'package:caremixer_test/features/pokedex/domain/pokemon_detail.dart';
import 'package:flutter/material.dart';

class PokedexDetailToolbarTopContentWidget extends BaseConsumerStatefulWidget {
  final PokemonDetail pokemonDetail;

  const PokedexDetailToolbarTopContentWidget({
    super.key,
    required this.pokemonDetail,
  });

  @override
  BaseConsumerState<PokedexDetailToolbarTopContentWidget> createState() =>
      _PokedexDetailToolbarTopContentWidgetState();
}

class _PokedexDetailToolbarTopContentWidgetState
    extends BaseConsumerState<PokedexDetailToolbarTopContentWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        return Column(
          children: [
            Flexible(
              child: Stack(
                fit: StackFit.passthrough,
                children: [
                  Stack(
                    fit: StackFit.passthrough,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        padding: const EdgeInsets.only(left: 10),
                        constraints: BoxConstraints(
                          minHeight: MediaQuery.of(context).padding.top + 130,
                          maxHeight: MediaQuery.of(context).padding.top + 130,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.colours.coreOrange,
                          border: Border(
                            bottom: BorderSide(color: Colors.black, width: 8),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        constraints: BoxConstraints(
                          minHeight: MediaQuery.of(context).padding.top + 204,
                          maxHeight: MediaQuery.of(context).padding.top + 204,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          constraints: const BoxConstraints(
                            minWidth: 160,
                            minHeight: 160,
                            maxHeight: 160,
                            maxWidth: 160,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(14),
                            child: Image.network(
                              widget.pokemonDetail.imageUrl,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
