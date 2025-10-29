import 'package:flutter/material.dart';

/// Reocurring dimensions used in the app.
class AppThemeDimensions {
  const AppThemeDimensions();

  /// Height of the tab bar
  static const double tabBarHeight = 72.0;

  static double maxScreenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double maxScreenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double bottomPadding(BuildContext context) =>
      MediaQuery.of(context).padding.bottom;

  static double topPadding(BuildContext context) =>
      MediaQuery.of(context).padding.top;

  static double leftPadding(BuildContext context) =>
      MediaQuery.of(context).padding.left;

  static double rightPadding(BuildContext context) =>
      MediaQuery.of(context).padding.right;
}
