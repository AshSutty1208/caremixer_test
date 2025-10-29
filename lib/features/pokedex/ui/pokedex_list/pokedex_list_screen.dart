import 'package:caremixer_test/base_api/api_status_enum.dart';
import 'package:caremixer_test/base_widgets/base_state_widgets.dart';
import 'package:caremixer_test/base_widgets/loaders/pokeball_loading_spinner.dart';
import 'package:caremixer_test/features/pokedex/domain/pokedex_repository.dart';
import 'package:caremixer_test/features/pokedex/ui/pokedex_list/pokedex_list_screen_view_model.dart';
import 'package:caremixer_test/features/pokedex/ui/pokedex_list/widgets/pokedex_list_item.dart';
import 'package:caremixer_test/routes/base_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:go_router/go_router.dart';

class PokedexListScreen extends BaseConsumerStatefulWidget {
  const PokedexListScreen({super.key});

  @override
  BaseConsumerState<PokedexListScreen> createState() =>
      _PokedexListScreenState();
}

class _PokedexListScreenState extends BaseConsumerState<PokedexListScreen> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(pokedexListScreenViewModelProvider.notifier).init();
    });

    _controller.addListener(() {
      if (_controller.position.pixels >= _controller.position.maxScrollExtent) {
        if (ref.read(pokedexListScreenViewModelProvider).getPokemonApiStatus !=
            ApiStatusEnum.loading) {
          ref
              .read(pokedexListScreenViewModelProvider.notifier)
              .hitBottomOfList();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final pokemonList = ref.watch(pokedexListScreenViewModelProvider).pokemon;
    final getPokemonApiStatus = ref
        .watch(pokedexListScreenViewModelProvider)
        .getPokemonApiStatus;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: RefreshIndicator(
                onRefresh: () async {
                  ref
                      .read(pokedexListScreenViewModelProvider.notifier)
                      .onRefresh();
                },
                child: CustomScrollView(
                  controller: _controller,
                  slivers: [
                    SliverGrid.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 1,
                            mainAxisExtent: 120,
                          ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            context.push(
                              NavigationRoutes.pokemonDetail,
                              extra: pokemonList[index],
                            );
                          },
                          child: PokedexListItem(pokemon: pokemonList[index]),
                        );
                      },
                      itemCount: pokemonList.length,
                    ),
                    SliverVisibility(
                      visible: getPokemonApiStatus == ApiStatusEnum.loading,
                      sliver: SliverToBoxAdapter(
                        child: const Center(child: PokeballLoadingSpinner()),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
