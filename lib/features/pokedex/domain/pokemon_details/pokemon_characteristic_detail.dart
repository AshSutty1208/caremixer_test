import 'package:dart_mappable/dart_mappable.dart';

part 'pokemon_characteristic_detail.mapper.dart';

@MappableClass(generateMethods: null)
class PokemonCharacteristicDetail with PokemonCharacteristicDetailMappable {
  const PokemonCharacteristicDetail({
    required this.id,
    required this.possibleValues,
    required this.highestStat,
    required this.description,
  });

  final int id;
  final List<int> possibleValues;
  final String highestStat;
  final String description;

  static PokemonCharacteristicDetail fromApi(Map<String, dynamic> map) {
    final descriptionJson = map['descriptions'].firstWhere(
      (description) => description['language']['name'] == "en",
    )['description'];

    return PokemonCharacteristicDetail(
      id: map['id'] as int,
      possibleValues: List<int>.from(
        map['possible_values'].map((value) => value as int),
      ),
      highestStat: map['highest_stat']['name'] as String,
      description: descriptionJson as String,
    );
  }
}
