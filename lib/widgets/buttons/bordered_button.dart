import 'package:blurple/tokens/color_tokens.dart';
import 'package:blurple/widgets/buttons/filled_button.dart';
import 'package:flutter/material.dart';

class BorderedButton extends StatelessWidget {
  const BorderedButton({
    super.key,
    this.child,
    this.text,
    this.borderRadius,
    this.backgroundColor,
    this.foregroundColor,
    this.padding,
    this.borderSide,
    this.textStyle,
    required this.onPressed,
  });

  final Text? child;
  final String? text;
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding;
  final BorderSide? borderSide;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return BaseButton.text(
      onPressed: onPressed,
      borderRadius: borderRadius,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      padding: padding,
      borderSide: borderSide ??
          BorderSide(
            color: ColorTokens.greyLighter,
            width: .2,
          ),
      text: text,
      textStyle: textStyle,
      child: child,
    );
  }
}
