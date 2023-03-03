import 'package:flutter/widgets.dart';

import 'schemes/schemes.dart';

class BlurpleThemeData extends InheritedWidget {
  const BlurpleThemeData({
    super.key,
    required this.colorScheme,
    required this.spacingScheme,
    required this.fontScheme,
    required super.child,
  });

  factory BlurpleThemeData.defaultTheme({
    required Widget child,
  }) =>
      BlurpleThemeData(
        key: const Key("BlurpleDefaultTheme"),
        colorScheme: BlurpleColorScheme.defaultScheme(),
        spacingScheme: BlurpleSpacingScheme.defaultScheme(),
        fontScheme: BlurpleFontScheme.defaultScheme(),
        child: child,
      );

  final BlurpleColorScheme colorScheme;
  final BlurpleSpacingScheme spacingScheme;
  final BlurpleFontScheme fontScheme;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return this != oldWidget;
  }
}
