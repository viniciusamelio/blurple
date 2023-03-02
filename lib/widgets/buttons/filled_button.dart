import 'package:blurple/sizes/radius.dart';
import 'package:blurple/sizes/spacings.dart';
import 'package:blurple/styles/font_styles.dart';
import 'package:blurple/tokens/color_tokens.dart';
import 'package:flutter/material.dart';

class FilledButton extends StatelessWidget {
  const FilledButton({
    Key? key,
    required this.child,
    this.borderRadius,
    this.backgroundColor,
    this.foregroundColor,
    this.onPressed,
    this.padding,
  }) : super(key: key);
  final Widget child;
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => backgroundColor),
        foregroundColor:
            MaterialStateProperty.resolveWith((states) => foregroundColor),
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
          ),
        ),
        padding: MaterialStateProperty.resolveWith((states) => padding),
      ),
      child: child,
    );
  }

  static const _defaultRadius = RadiusTokens.sm;
  static final _defaultBackgroundColor = ColorTokens.concrete;
  static final _defaultForegroundColor = ColorTokens.greyLighter;
  static final _defaultPadding = EdgeInsets.symmetric(
    vertical: Spacings.md,
    horizontal: Spacings.xl,
  );

  factory FilledButton.text({
    required VoidCallback onPressed,
    Text? child,
    String? text,
    double? borderRadius,
    EdgeInsetsGeometry? padding,
    Color? backgroundColor,
    Color? foregroundColor,
  }) =>
      FilledButton(
        borderRadius: borderRadius ?? _defaultRadius,
        backgroundColor: backgroundColor ?? _defaultBackgroundColor,
        foregroundColor: foregroundColor ?? _defaultForegroundColor,
        padding: padding ?? _defaultPadding,
        onPressed: onPressed,
        child: child ??
            Text(
              text ?? "",
              style: FontStyles.p2(
                color: foregroundColor,
              ),
            ),
      );
}
