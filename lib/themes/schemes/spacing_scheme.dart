import 'package:flutter/widgets.dart';

abstract class BlurpleSpacingScheme {
  const BlurpleSpacingScheme({
    required this.buttonPadding,
    required this.iconButtonPadding,
    required this.elevatedPadding,
    required this.inputPadding,
    required this.verticalSpacing,
    required this.horizontalSpacing,
    required this.iconButtonSize,
  });
  final EdgeInsetsGeometry buttonPadding;
  final EdgeInsetsGeometry iconButtonPadding;
  final Size iconButtonSize;
  final EdgeInsetsGeometry elevatedPadding;
  final EdgeInsetsGeometry inputPadding;
  final double verticalSpacing;
  final double horizontalSpacing;

  @override
  bool operator ==(covariant BlurpleSpacingScheme other) {
    if (identical(this, other)) return true;

    return other.buttonPadding == buttonPadding &&
        other.iconButtonPadding == iconButtonPadding &&
        other.elevatedPadding == elevatedPadding &&
        other.inputPadding == inputPadding &&
        other.verticalSpacing == verticalSpacing &&
        other.horizontalSpacing == horizontalSpacing;
  }

  @override
  int get hashCode {
    return buttonPadding.hashCode ^
        iconButtonPadding.hashCode ^
        elevatedPadding.hashCode ^
        inputPadding.hashCode ^
        verticalSpacing.hashCode ^
        horizontalSpacing.hashCode;
  }
}
