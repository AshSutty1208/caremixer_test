import 'package:dart_mappable/dart_mappable.dart';

part 'pokemon_species.mapper.dart';

@MappableClass()
class PokemonSpecies with PokemonSpeciesMappable {
  const PokemonSpecies({required this.url, required this.name});

  final String url;
  final String name;

  factory PokemonSpecies.fromApi(Map<String, dynamic> map) {
    return PokemonSpecies(
      url: map['url'] as String,
      name: map['name'] as String,
    );
  }
}
