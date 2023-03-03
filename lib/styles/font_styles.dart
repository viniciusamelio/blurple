import 'package:flutter/widgets.dart';

import 'package:blurple/sizes/font_sizes.dart';
import 'package:blurple/tokens/color_tokens.dart';

abstract class FontStyles {
  static const String _bodyFamily = "Rubik";
  static const String _emphasisFamily = "Rubik";

  static TextStyle p1({
    double? spacing,
    Color? color,
    FontWeight? weight,
    FontStyle? style,
    String? fontFamily,
  }) =>
      TextStyle(
        fontFamily: fontFamily ?? _bodyFamily,
        color: color ?? ColorTokens.greyDarker,
        letterSpacing: spacing,
        fontSize: FontSizes.xs,
        fontWeight: weight ?? FontWeight.w400,
        fontStyle: style,
      );

  static TextStyle p2({
    double? spacing,
    FontWeight? weight,
    Color? color,
    FontStyle? style,
    String? fontFamily,
  }) =>
      TextStyle(
        fontFamily: fontFamily ?? _bodyFamily,
        color: color ?? ColorTokens.greyDarker,
        letterSpacing: spacing,
        fontSize: FontSizes.sm,
        fontWeight: weight ?? FontWeight.w400,
        fontStyle: style,
      );

  static TextStyle h3({
    Color? color,
    double? spacing,
    FontWeight? weight,
    FontStyle? style,
    String? fontFamily,
  }) =>
      TextStyle(
        fontFamily: fontFamily ?? _emphasisFamily,
        color: color,
        letterSpacing: spacing,
        fontSize: FontSizes.md,
        fontWeight: weight ?? FontWeight.w600,
        fontStyle: style,
      );

  static TextStyle h2({
    Color? color,
    double? spacing,
    FontWeight? weight,
    FontStyle? style,
    String? fontFamily,
  }) =>
      TextStyle(
        fontFamily: fontFamily ?? _emphasisFamily,
        color: color,
        letterSpacing: spacing,
        fontSize: FontSizes.lg,
        fontWeight: weight ?? FontWeight.w600,
        fontStyle: style,
      );

  static TextStyle h1({
    Color? color,
    double? spacing,
    FontWeight? weight,
    FontStyle? style,
    String? fontFamily,
  }) =>
      TextStyle(
        fontFamily: fontFamily ?? _emphasisFamily,
        color: color,
        letterSpacing: spacing,
        fontSize: FontSizes.xl,
        fontWeight: weight ?? FontWeight.w600,
        fontStyle: style,
      );
}
