import 'package:caremixer_test/app_theme/app_theme.dart';
import 'package:caremixer_test/base_widgets/base_state_widgets.dart';
import 'package:caremixer_test/base_widgets/loaders/pokeball_loading_spinner.dart';
import 'package:caremixer_test/extensions.dart';
import 'package:caremixer_test/features/pokedex/domain/pokemon_detail.dart';
import 'package:caremixer_test/features/timeline/domain/timeline_item.dart';
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

  Widget _buildTimelineItemType(TimelineItem timelineItem, AppTheme appTheme) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Card(
            color: timelineItem.timelineItemType == TimelineItemType.note
                ? appTheme.colours.corePaleMint
                : appTheme.colours.coreCoralRed,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 16.0,
                bottom: 12.0,
              ),
              child: Column(
                spacing: 4,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(timelineItem.title, style: appTheme.textStyles.label1),

                  Text(timelineItem.message, style: appTheme.textStyles.body1),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      spacing: 4,
                      children: [
                        Icon(
                          timelineItem.timelineItemType == TimelineItemType.note
                              ? Icons.note
                              : Icons.file_copy_sharp,
                          size: 16,
                          color: appTheme.colours.coreBlackLightWhiteDark,
                        ),
                        Text(
                          timelineItem.timelineItemType.name.capitalize(),
                          style: appTheme.textStyles.caption,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
