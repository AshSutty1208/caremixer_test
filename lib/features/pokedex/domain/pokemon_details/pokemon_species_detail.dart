import 'package:dart_mappable/dart_mappable.dart';

part 'pokemon_species_detail.mapper.dart';

@MappableClass(generateMethods: null)
class PokemonSpeciesDetail with PokemonSpeciesDetailMappable {
  const PokemonSpeciesDetail({
    required this.id,
    required this.growthRate,
    required this.habitat,
    required this.description,
    required this.captureRate,
    required this.shape,
  });

  final int id;
  final String growthRate;
  final String habitat;
  final String description;
  final int captureRate;
  final String shape;

  static PokemonSpeciesDetail fromApi(Map<String, dynamic> map) {
    final growthRateJson = map['growth_rate'];
    final growthRate = growthRateJson['name'] as String;

    String habitat = "No Habitat Found";
    final habitatJson = map['habitat'];
    if (habitatJson != null) {
      habitat = habitatJson['name'] as String;
    }

    String description = "";
    final flavourTextJson = map['flavor_text_entries'] as List;
    for (var flavor in flavourTextJson) {
      final languageObj = flavor['language'];
      if (languageObj['name'] == "en") {
        description = flavor['flavor_text'] as String;
      }
    }

    final shapeJson = map['shape'];
    String shape = "No Shape Found";
    if (shapeJson != null) {
      shape = shapeJson['name'] as String;
    }

    return PokemonSpeciesDetail(
      id: map['id'] as int,
      growthRate: growthRate,
      habitat: habitat,
      description: description,
      captureRate: map['capture_rate'] as int,
      shape: shape,
    );
  }
}
