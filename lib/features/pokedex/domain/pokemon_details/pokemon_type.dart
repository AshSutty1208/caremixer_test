import 'dart:ui';

import 'package:caremixer_test/app_theme/app_theme.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'pokemon_type.mapper.dart';

@MappableClass()
class PokemonType with PokemonTypeMappable {
  const PokemonType({required this.url, required this.name});

  final String url;
  final String name;

  factory PokemonType.fromApi(Map<String, dynamic> map) {
    Map<String, dynamic> typeJson = map['type'];

    String name = typeJson['name'] as String;

    return PokemonType(url: map['url'] ??= "", name: name);
  }
}

extension PokemonTypeExtension on PokemonType {
  Color getColor(AppTheme appTheme) {
    switch (name.toLowerCase()) {
      case "normal":
        return appTheme.colours.pokemonTypeColorNormal;
      case "fire":
        return appTheme.colours.pokemonTypeColorFire;
      case "water":
        return appTheme.colours.pokemonTypeColorWater;
      case "electric":
        return appTheme.colours.pokemonTypeColorElectric;
      case "grass":
        return appTheme.colours.pokemonTypeColorGrass;
      case "ice":
        return appTheme.colours.pokemonTypeColorIce;
      case "fighting":
        return appTheme.colours.pokemonTypeColorFighting;
      case "poison":
        return appTheme.colours.pokemonTypeColorPoison;
      case "ground":
        return appTheme.colours.pokemonTypeColorGround;
      case "flying":
        return appTheme.colours.pokemonTypeColorFlying;
      case "psychic":
        return appTheme.colours.pokemonTypeColorPsychic;
      case "bug":
        return appTheme.colours.pokemonTypeColorBug;
      case "rock":
        return appTheme.colours.pokemonTypeColorRock;
      case "ghost":
        return appTheme.colours.pokemonTypeColorGhost;
      case "dragon":
        return appTheme.colours.pokemonTypeColorDragon;
      case "dark":
        return appTheme.colours.pokemonTypeColorDark;
      case "steel":
        return appTheme.colours.pokemonTypeColorSteel;
      case "fairy":
        return appTheme.colours.pokemonTypeColorFairy;

      default:
        return appTheme.colours.coreBlackOrWhite;
    }
  }
}
