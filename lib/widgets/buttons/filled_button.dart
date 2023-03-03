import 'package:blurple/sizes/spacings.dart';
import 'package:blurple/styles/font_styles.dart';
import 'package:blurple/themes/theme_data.dart';
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
    this.size,
  }) : super(key: key);
  final Widget child;
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final BorderSide? borderSide;
  final Size? size;

  @override
  Widget build(BuildContext context) {
    final theme =
        context.dependOnInheritedWidgetOfExactType<BlurpleThemeData>()!;
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.resolveWith(
          (states) =>
              child is! Icon ? size : theme.spacingScheme.iconButtonSize,
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => backgroundColor ?? theme.colorScheme.backgroundColor,
        ),
        overlayColor: MaterialStateProperty.resolveWith(
          (states) => theme.colorScheme.accentColor.withOpacity(.1),
        ),
        shadowColor: MaterialStateProperty.resolveWith(
          (states) => theme.colorScheme.shadowColor,
        ),
        splashFactory: InkRipple.splashFactory,
        side: MaterialStateProperty.resolveWith((states) => borderSide),
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) => foregroundColor ?? theme.colorScheme.foregroundColor,
        ),
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius ?? theme.radiusScheme.buttonRadius,
            ),
          ),
        ),
        padding: MaterialStateProperty.resolveWith(
          (states) =>
              padding ??
              (child is! Icon
                  ? theme.spacingScheme.buttonPadding
                  : theme.spacingScheme.iconButtonPadding),
        ),
      ),
      child: child,
    );
  }

  factory BaseButton.text({
    required VoidCallback onPressed,
    Text? child,
    String? text,
    double? borderRadius,
    EdgeInsetsGeometry? padding,
    Color? backgroundColor,
    Color? foregroundColor,
    BorderSide? borderSide,
    TextStyle? textStyle,
  }) =>
      BaseButton(
        borderRadius: borderRadius,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        padding: padding,
        onPressed: onPressed,
        borderSide: borderSide,
        child: child ??
            Text(
              text ?? "",
              style: textStyle ??
                  FontStyles.p2(
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
    TextStyle? textStyle,
  }) =>
      BaseButton(
        borderRadius: borderRadius,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        padding: padding,
        borderSide: borderSide,
        onPressed: onPressed,
        child: Visibility(
          visible: labelWidget != null || label != null,
          replacement: icon,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon,
              SizedBox(
                width: Spacings.xs,
              ),
              labelWidget ??
                  Text(
                    label ?? "",
                    style: textStyle ??
                        FontStyles.p2(
                          color: foregroundColor,
                        ),
                  ),
            ],
          ),
        ),
      );
}
