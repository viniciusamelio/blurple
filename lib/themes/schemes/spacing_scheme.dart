import 'package:flutter/widgets.dart';

import '../../sizes/spacings.dart';

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

  factory BlurpleSpacingScheme.defaultScheme() => DefaultSpacingScheme();

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

class DefaultSpacingScheme extends BlurpleSpacingScheme {
  DefaultSpacingScheme()
      : super(
          buttonPadding: EdgeInsets.symmetric(
            vertical: Spacings.lg,
            horizontal: Spacings.xl,
          ),
          iconButtonPadding: EdgeInsets.all(
            Spacings.sm,
          ),
          elevatedPadding: EdgeInsets.all(
            Spacings.sm,
          ),
          inputPadding: EdgeInsets.symmetric(
            vertical: Spacings.lg,
            horizontal: Spacings.md,
          ),
          verticalSpacing: Spacings.sm,
          horizontalSpacing: Spacings.sm,
          iconButtonSize: const Size(48, 48),
        );
}
