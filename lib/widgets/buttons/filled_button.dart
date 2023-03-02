import 'package:blurple/sizes/radius.dart';
import 'package:blurple/sizes/spacings.dart';
import 'package:blurple/styles/font_styles.dart';
import 'package:blurple/tokens/color_tokens.dart';
import 'package:blurple/tokens/size_tokens.dart';
import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    Key? key,
    required this.child,
    this.borderRadius,
    this.backgroundColor,
    this.foregroundColor,
    this.onPressed,
    this.padding,
    this.borderSide,
  }) : super(key: key);
  final Widget child;
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final BorderSide? borderSide;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => backgroundColor),
        splashFactory: InkRipple.splashFactory,
        side: MaterialStateProperty.resolveWith((states) => borderSide),
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
    vertical: Spacings.lg,
    horizontal: Spacings.xl,
  );

  factory BaseButton.text({
    required VoidCallback onPressed,
    Text? child,
    String? text,
    double? borderRadius,
    EdgeInsetsGeometry? padding,
    Color? backgroundColor,
    Color? foregroundColor,
    BorderSide? borderSide,
  }) =>
      BaseButton(
        borderRadius: borderRadius ?? _defaultRadius,
        backgroundColor: backgroundColor ?? _defaultBackgroundColor,
        foregroundColor: foregroundColor ?? _defaultForegroundColor,
        padding: padding ?? _defaultPadding,
        onPressed: onPressed,
        borderSide: borderSide,
        child: child ??
            Text(
              text ?? "",
              style: FontStyles.p2(
                color: foregroundColor,
              ),
            ),
      );

  factory BaseButton.icon({
    required VoidCallback onPressed,
    required Widget icon,
    Widget? labelWidget,
    String? label,
    double? borderRadius,
    EdgeInsetsGeometry? padding,
    Color? backgroundColor,
    Color? foregroundColor,
    BorderSide? borderSide,
  }) =>
      BaseButton(
        borderRadius: borderRadius ?? _defaultRadius,
        backgroundColor: backgroundColor ?? _defaultBackgroundColor,
        foregroundColor: foregroundColor ?? _defaultForegroundColor,
        padding: padding ?? _defaultPadding,
        borderSide: borderSide,
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            SizedBox(
              width: SizeTokens.xs,
            ),
            labelWidget ??
                Text(
                  label ?? "",
                  style: FontStyles.p2(
                    color: foregroundColor,
                  ),
                ),
          ],
        ),
      );
}
