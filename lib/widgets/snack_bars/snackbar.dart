import 'package:blurple/themes/theme_data.dart';
import 'package:flutter/material.dart';

class BaseSnackbar extends StatelessWidget {
  const BaseSnackbar({
    super.key,
    this.preffix,
    this.suffix,
    this.showCloseIcon,
    this.color,
    required this.title,
    required this.content,
  });
  final Widget? preffix;
  final Widget? suffix;
  final bool? showCloseIcon;
  final Color? color;
  final Widget title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    final theme = BlurpleThemeData.of(context);

    return SnackBar(
      backgroundColor: color ?? theme.colorScheme.shadowColor,
      behavior: SnackBarBehavior.floating,
      showCloseIcon: showCloseIcon,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          title,
          SizedBox.square(
            dimension: theme.spacingScheme.verticalSpacing,
          ),
          content,
        ],
      ),
    );
  }

  factory BaseSnackbar.text({
    required String title,
    required String content,
    required BuildContext context,
    Color? backgroundColor,
    bool? showCloseIcon,
    TextStyle? titleStyle,
    TextStyle? contentStyle,
  }) {
    final theme = BlurpleThemeData.of(context);

    return BaseSnackbar(
      title: Text(
        title,
        style: titleStyle ?? theme.fontScheme.h3,
      ),
      content: Text(
        content,
        style: contentStyle ?? theme.fontScheme.elevatedWidgets,
      ),
      showCloseIcon: showCloseIcon,
      color: backgroundColor,
    );
  }
}
