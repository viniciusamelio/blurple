import 'package:flutter/widgets.dart';

abstract class BlurpleFontScheme {
  const BlurpleFontScheme({
    required this.bodyFontFamily,
    required this.titleFontFamily,
    required this.buttonLabel,
    required this.elevatedWidgets,
    required this.h1,
    required this.h2,
    required this.h3,
    required this.p1,
    required this.p2,
  });
  final String bodyFontFamily;
  final String titleFontFamily;
  final TextStyle buttonLabel;
  final TextStyle elevatedWidgets;
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle p1;
  final TextStyle p2;

  @override
  bool operator ==(covariant BlurpleFontScheme other) {
    if (identical(this, other)) return true;

    return other.bodyFontFamily == bodyFontFamily &&
        other.titleFontFamily == titleFontFamily &&
        other.buttonLabel == buttonLabel &&
        other.elevatedWidgets == elevatedWidgets &&
        other.h1 == h1 &&
        other.h2 == h2 &&
        other.h3 == h3 &&
        other.p1 == p1 &&
        other.p2 == p2;
  }

  @override
  int get hashCode {
    return bodyFontFamily.hashCode ^
        titleFontFamily.hashCode ^
        buttonLabel.hashCode ^
        elevatedWidgets.hashCode ^
        h1.hashCode ^
        h2.hashCode ^
        h3.hashCode ^
        p1.hashCode ^
        p2.hashCode;
  }
}
