import 'package:blurple/tokens/color_tokens.dart';
import 'package:flutter/material.dart';

import '../sizes/radius.dart';
import '../sizes/spacings.dart';

final blurpleDark = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: ColorTokens.blurple).copyWith(
    background: ColorTokens.concreteDarker,
  ),
  buttonTheme: _buttonTheme(),
  inputDecorationTheme: _inputTheme(),
);

ButtonThemeData _buttonTheme() {
  return ButtonThemeData(
    buttonColor: ColorTokens.concrete,
    shape: RoundedRectangleBorder(borderRadius: RoundedBorder.sm),
    textTheme: ButtonTextTheme.normal,
  );
}

InputDecorationTheme _inputTheme() {
  return InputDecorationTheme(
    filled: true,
    fillColor: ColorTokens.shadow,
    contentPadding: EdgeInsets.symmetric(
      vertical: Spacings.md,
      horizontal: Spacings.xl,
    ),
    border: OutlineInputBorder(
      borderRadius: RoundedBorder.sm,
      borderSide: BorderSide(
        color: ColorTokens.greyDarker,
      ),
    ),
  );
}
