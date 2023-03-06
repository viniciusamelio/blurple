import 'package:blurple/sizes/spacings.dart';
import 'package:blurple/themes/theme_data.dart';
import 'package:flutter/material.dart';

enum BottomSheetType {
  content,
  base,
}

class BaseBottomSheet extends StatelessWidget {
  const BaseBottomSheet({
    super.key,
    this.height,
    this.header,
    this.type = BottomSheetType.base,
    this.title,
    this.content,
    this.illustration,
    this.actions,
    this.body,
  });

  final Widget? body;
  final double? height;
  final BottomSheetType type;
  final String? title, content;
  final Widget? illustration, actions, header;

  @override
  Widget build(BuildContext context) {
    final theme = BlurpleThemeData.of(context);

    if (type == BottomSheetType.content) {
      assert(
        title != null && content != null,
        "Content Bottom Sheet should have title and content values declared",
      );
      return defaultSheet(
        context: context,
        title: title!,
        content: content!,
        illustration: illustration,
        actions: actions,
      );
    }

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
            body!,
          ],
        ),
      ),
    );
  }

  Widget defaultSheet({
    required BuildContext context,
    required String title,
    required String content,
    Widget? illustration,
    Widget? actions,
  }) {
    final theme = BlurpleThemeData.of(context);

    return BaseBottomSheet(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: theme.fontScheme.h2,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: Spacings.lg,
          ),
          illustration ?? const SizedBox.shrink(),
          SizedBox(
            height: Spacings.lg,
          ),
          Text(
            content,
            style: theme.fontScheme.p2,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: Spacings.lg,
          ),
          actions ?? const SizedBox.shrink(),
        ],
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
