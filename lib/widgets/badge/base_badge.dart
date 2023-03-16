// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blurple/themes/theme_data.dart';
import 'package:blurple/tokens/color_tokens.dart';
import 'package:flutter/material.dart';

class BaseBadge extends StatelessWidget {
  const BaseBadge({
    Key? key,
    required this.child,
    required this.label,
    this.padding,
    this.backgroundColor,
    this.accentColor,
    this.topSpacing = -20,
    this.rightSpacing = -18,
  }) : super(key: key);
  final Widget child;
  final Widget label;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final Color? accentColor;

  final double? topSpacing;
  final double? rightSpacing;

  @override
  Widget build(BuildContext context) {
    final theme = BlurpleThemeData.of(context);

    return SizedBox(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          child,
          Positioned(
            right: rightSpacing,
            top: topSpacing,
            child: Container(
              padding: theme.spacingScheme.badgePadding,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  theme.radiusScheme.badgeRadius,
                ),
                border: Border.all(
                  color: accentColor ?? theme.colorScheme.accentColor,
                ),
                color:
                    backgroundColor ?? theme.colorScheme.badgeBackgroundColor,
              ),
              child: label,
            ),
          ),
        ],
      ),
    );
  }

  factory BaseBadge.text({
    required String label,
    required Widget child,
    Color? accentColor,
    Color? backgroundColor,
    double? topSpacing,
    double? rightSpacing,
  }) =>
      BaseBadge(
        label: Text(
          label,
          style: TextStyle(
            fontSize: 13,
            color: accentColor ?? ColorTokens.blurple,
          ),
        ),
        accentColor: accentColor,
        backgroundColor: backgroundColor,
        topSpacing: topSpacing,
        rightSpacing: rightSpacing,
        child: child,
      );
}
