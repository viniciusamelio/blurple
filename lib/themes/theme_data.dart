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

  final BlurpleColorScheme colorScheme;
  final BlurpleSpacingScheme spacingScheme;
  final BlurpleFontScheme fontScheme;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return this != oldWidget;
  }
}
