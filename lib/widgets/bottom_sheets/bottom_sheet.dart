import 'package:blurple/themes/theme_data.dart';
import 'package:flutter/material.dart';

class BaseBottomSheet extends StatelessWidget {
  const BaseBottomSheet({
    super.key,
    this.height,
    this.header,
    required this.body,
  });

  final Widget? header;
  final Widget body;

  final double? height;

  @override
  Widget build(BuildContext context) {
    final theme = BlurpleThemeData.of(context);

    return Container(
      width: MediaQuery.of(context).size.width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(theme.radiusScheme.sheetRadius),
        ),
        color: theme.colorScheme.elevatedWidgetsColor,
      ),
      child: Padding(
        padding: theme.spacingScheme.elevatedPadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            header ?? const SizedBox.shrink(),
            body,
          ],
        ),
      ),
    );
  }

  Future<T?> show<T>(
    BuildContext context, {
    bool? isDismissible,
    bool? isScrollControlled,
    Color? barrierColor,
    Color? backgroundColor,
  }) {
    return showModalBottomSheet<T?>(
      context: context,
      elevation: 0,
      isDismissible: isDismissible ?? true,
      isScrollControlled: isScrollControlled ?? true,
      barrierColor: barrierColor,
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            BlurpleThemeData.of(context).radiusScheme.sheetRadius,
          ),
        ),
      ),
      builder: (context) => build(context),
    );
  }
}
