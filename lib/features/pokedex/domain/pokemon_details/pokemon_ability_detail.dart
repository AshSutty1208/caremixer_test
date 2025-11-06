import 'package:dart_mappable/dart_mappable.dart';

part 'pokemon_ability_detail.mapper.dart';

@MappableClass()
class PokemonAbilityDetail with PokemonAbilityDetailMappable {
  const PokemonAbilityDetail({required this.name, required this.effectEntry});

  final String name;
  final String effectEntry;

  factory PokemonAbilityDetail.fromApi(Map<String, dynamic> map) {
    final name = map['names'].firstWhere(
      (name) => name['language']['name'] == "en",
    );

    final effectEntry = map['effect_entries']
        .firstWhere((effect) => effect['language']['name'] == "en")['effect']
        .trim();

    return PokemonAbilityDetail(
      name: name['name'] ?? "",
      effectEntry: effectEntry ?? "",
    );
  }
}
