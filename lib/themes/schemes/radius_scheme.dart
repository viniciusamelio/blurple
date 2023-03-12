import 'package:blurple/sizes/radius.dart';

abstract class BlurpleRadiusScheme {
  BlurpleRadiusScheme({
    required this.buttonRadius,
    required this.elevatedRadius,
    required this.sheetRadius,
    required this.inputRadius,
  });

  factory BlurpleRadiusScheme.defaultScheme() => DefaultRadiusScheme();

  final double buttonRadius;
  final double elevatedRadius;
  final double sheetRadius;
  final double inputRadius;
}

class DefaultRadiusScheme extends BlurpleRadiusScheme {
  DefaultRadiusScheme()
      : super(
          buttonRadius: RadiusTokens.md,
          elevatedRadius: RadiusTokens.xxl,
          sheetRadius: RadiusTokens.xxl,
          inputRadius: RadiusTokens.sm,
        );
}
