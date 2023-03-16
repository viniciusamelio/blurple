import 'package:blurple/tokens/color_tokens.dart';
import 'package:blurple/widgets/buttons/filled_button.dart';
import 'package:flutter/material.dart';

class BorderedIconButton extends StatelessWidget {
  const BorderedIconButton({
    super.key,
    this.text,
    this.borderRadius,
    this.backgroundColor,
    this.foregroundColor,
    this.padding,
    this.borderSide,
    this.textStyle,
    this.labelWidget,
    this.preffixIcon,
    this.suffixIcon,
    required this.onPressed,
  }) : assert(
          preffixIcon != null || suffixIcon != null,
          "Either preffix or suffix icon should be set",
        );

  final Widget? preffixIcon;
  final Widget? suffixIcon;
  final String? text;
  final Text? labelWidget;
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding;
  final BorderSide? borderSide;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return BaseButton.icon(
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
      label: text,
      textStyle: textStyle,
      labelWidget: labelWidget,
      icon: preffixIcon,
      suffixIcon: suffixIcon,
    );
  }
}
