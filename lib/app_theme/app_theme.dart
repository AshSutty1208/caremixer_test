import 'package:caremixer_test/app_theme/app_theme_colours.dart';
import 'package:caremixer_test/app_theme/app_theme_text_styles.dart';
import 'package:flutter/material.dart';

export 'app_theme_colours.dart';

/// This is the base class for the app theme.
abstract class AppTheme {
  late final bool isLight;

  ThemeData get materialTheme;

  AppThemeColours get colours;

  AppThemeTextStyles get textStyles;
}

class AppThemeDark implements AppTheme {
  @override
  ThemeData get materialTheme => ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.fromSeed(seedColor: colours.coreBrickRed),
  );

  @override
  bool isLight = false;

  @override
  AppThemeColours get colours => const AppDarkColours();

  @override
  AppThemeTextStyles get textStyles =>
      const AppDarkTextStyles(AppDarkColours());
}

class AppThemeLight implements AppTheme {
  @override
  bool isLight = true;

  @override
  ThemeData get materialTheme => ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(seedColor: colours.coreCoralRed),
    primaryColor: colours.coreCoralRed,
    primaryColorLight: colours.coreCoralRed,
    primaryColorDark: colours.coreCoralRed,
  );

  @override
  AppThemeColours get colours => const AppLightColours();

  @override
  AppThemeTextStyles get textStyles =>
      const AppLightTextStyles(AppLightColours());
}
