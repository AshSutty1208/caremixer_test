import 'package:dart_mappable/dart_mappable.dart';

part 'pokemon_ability_detail.mapper.dart';

@MappableClass()
class PokemonAbilityDetail with PokemonAbilityDetailMappable {
  const PokemonAbilityDetail({required this.url, required this.name});

  final String url;
  final String name;

  factory PokemonAbilityDetail.fromApi(Map<String, dynamic> map) {
    return PokemonAbilityDetail(
      url: map['url'] as String,
      name: map['name'] as String,
    );
  }
}
