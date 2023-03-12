import 'package:blurple/tokens/color_tokens.dart';
import 'package:flutter/widgets.dart';

abstract class BlurpleColorScheme {
  const BlurpleColorScheme({
    required this.accentColor,
    required this.warningColor,
    required this.dangerColor,
    required this.infoColor,
    required this.successColor,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.elevatedWidgetsColor,
    required this.overlayElevatedWidgetsColor,
    required this.shadowColor,
    required this.borderColor,
    required this.inputBackgroundColor,
    required this.inputForegroundColor,
  });

  final Color accentColor;
  final Color warningColor;
  final Color dangerColor;
  final Color infoColor;
  final Color successColor;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color elevatedWidgetsColor;
  final Color overlayElevatedWidgetsColor;
  final Color shadowColor;
  final Color borderColor;
  final Color inputBackgroundColor;
  final Color inputForegroundColor;

  factory BlurpleColorScheme.defaultScheme() => DefaultColorScheme();

  @override
  bool operator ==(covariant BlurpleColorScheme other) {
    if (identical(this, other)) return true;

    return other.accentColor == accentColor &&
        other.warningColor == warningColor &&
        other.dangerColor == dangerColor &&
        other.infoColor == infoColor &&
        other.successColor == successColor &&
        other.backgroundColor == backgroundColor &&
        other.elevatedWidgetsColor == elevatedWidgetsColor &&
        other.overlayElevatedWidgetsColor == overlayElevatedWidgetsColor &&
        other.shadowColor == shadowColor &&
        other.borderColor == borderColor;
  }

  @override
  int get hashCode {
    return accentColor.hashCode ^
        warningColor.hashCode ^
        dangerColor.hashCode ^
        infoColor.hashCode ^
        successColor.hashCode ^
        backgroundColor.hashCode ^
        elevatedWidgetsColor.hashCode ^
        overlayElevatedWidgetsColor.hashCode ^
        shadowColor.hashCode ^
        borderColor.hashCode;
  }
}

class DefaultColorScheme extends BlurpleColorScheme {
  DefaultColorScheme()
      : super(
          accentColor: ColorTokens.blurple,
          warningColor: ColorTokens.yellow,
          dangerColor: ColorTokens.red,
          successColor: ColorTokens.green,
          backgroundColor: ColorTokens.concreteDarker,
          infoColor: ColorTokens.blue,
          elevatedWidgetsColor: ColorTokens.concrete,
          overlayElevatedWidgetsColor: ColorTokens.shadow,
          shadowColor: ColorTokens.shadow,
          borderColor: ColorTokens.greyLighter,
          foregroundColor: ColorTokens.greyLighter,
          inputBackgroundColor: ColorTokens.shadow,
          inputForegroundColor: ColorTokens.greyDarker,
        );
}
