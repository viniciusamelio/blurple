import 'package:blurple/themes/theme_data.dart';
import 'package:blurple/tokens/size_tokens.dart';
import 'package:flutter/widgets.dart';

class DefaultTabItem extends StatelessWidget {
  const DefaultTabItem({
    Key? key,
    required this.child,
    required this.isActive,
    this.activeAccentColor,
    this.inactiveChild,
  }) : super(key: key);

  final Widget child;
  final bool isActive;
  final Color? activeAccentColor;
  final Widget? inactiveChild;

  @override
  Widget build(BuildContext context) {
    final theme = BlurpleThemeData.of(context);

    return Padding(
      padding: theme.spacingScheme.inputPadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: isActive,
            replacement: inactiveChild ?? child,
            child: child,
          ),
          SizedBox(
            height: SizeTokens.sm,
          ),
          Visibility(
            visible: isActive,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 2,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(theme.radiusScheme.elevatedRadius),
                color: activeAccentColor ?? theme.colorScheme.accentColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
