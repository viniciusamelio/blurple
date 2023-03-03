
abstract class BlurpleSpacingScheme {
  const BlurpleSpacingScheme({
    required this.buttonPadding,
    required this.iconButtonPadding,
    required this.elevatedPadding,
    required this.inputPadding,
    required this.verticalSpacing,
    required this.horizontalSpacing,
  });
  final double buttonPadding;
  final double iconButtonPadding;
  final double elevatedPadding;
  final double inputPadding;
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
