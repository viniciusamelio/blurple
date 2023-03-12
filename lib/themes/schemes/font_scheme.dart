import 'package:blurple/styles/font_styles.dart';
import 'package:flutter/widgets.dart';

abstract class BlurpleFontScheme {
  BlurpleFontScheme({
    required this.bodyFontFamily,
    required this.titleFontFamily,
    required TextStyle buttonLabel,
    required TextStyle elevatedWidgets,
    required TextStyle h1,
    required TextStyle h2,
    required TextStyle h3,
    required TextStyle p1,
    required TextStyle p2,
    required TextStyle input,
  }) {
    this.buttonLabel = buttonLabel.copyWith(
      fontFamily: bodyFontFamily,
    );
    this.input = input.copyWith(
      fontFamily: bodyFontFamily,
    );
    this.elevatedWidgets = elevatedWidgets.copyWith(
      fontFamily: bodyFontFamily,
    );
    this.p1 = p1.copyWith(
      fontFamily: bodyFontFamily,
    );
    this.p2 = p2.copyWith(
      fontFamily: bodyFontFamily,
    );

    this.h1 = h1.copyWith(
      fontFamily: titleFontFamily,
    );
    this.h2 = h2.copyWith(
      fontFamily: titleFontFamily,
    );
    this.h3 = h3.copyWith(
      fontFamily: titleFontFamily,
    );
  }
  final String bodyFontFamily;
  final String titleFontFamily;
  late final TextStyle buttonLabel;
  late final TextStyle elevatedWidgets;
  late final TextStyle h1;
  late final TextStyle h2;
  late final TextStyle h3;
  late final TextStyle p1;
  late final TextStyle p2;
  late final TextStyle input;

  factory BlurpleFontScheme.defaultScheme() => DefaultFontScheme();

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

class DefaultFontScheme extends BlurpleFontScheme {
  DefaultFontScheme()
      : super(
          bodyFontFamily: "Rubik",
          titleFontFamily: "Rubik",
          elevatedWidgets: FontStyles.p2(),
          h1: FontStyles.h1(),
          h2: FontStyles.h2(),
          h3: FontStyles.h3(),
          p1: FontStyles.p1(),
          p2: FontStyles.p2(),
          buttonLabel: FontStyles.p2(),
          input: FontStyles.input(),
        );
}
