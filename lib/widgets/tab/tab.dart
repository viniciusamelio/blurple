import 'package:blurple/widgets/tab/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:pressable/pressable.dart';

class BlurpleTabBar extends StatefulWidget {
  const BlurpleTabBar({
    super.key,
    this.onChangeActive,
    this.direction = Axis.horizontal,
    this.axisAlignment = MainAxisAlignment.center,
    this.width,
    required this.items,
  });

  final List<DefaultTabItem> items;
  final void Function(int index)? onChangeActive;
  final Axis direction;
  final MainAxisAlignment axisAlignment;
  final double? width;

  @override
  State<BlurpleTabBar> createState() => _BlurpleTabState();
}

class _BlurpleTabState extends State<BlurpleTabBar> {
  List<DefaultTabItem> get items => widget.items;
  void Function(int index)? get onChangeActive => widget.onChangeActive;

  final ValueNotifier<int> _activeIndex = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    _activeIndex.addListener(() {
      if (onChangeActive != null) {
        onChangeActive!(_activeIndex.value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: _activeIndex,
      builder: (context, index, _) {
        final rebuiltItems = items
            .map<Widget>(
              (e) => Expanded(
                child: Pressable.scale(
                  onPressed: () {
                    _activeIndex.value = items.indexOf(e);
                  },
                  child: DefaultTabItem(
                    isActive: index == items.indexOf(e),
                    key: e.key,
                    activeAccentColor: e.activeAccentColor,
                    inactiveChild: e.inactiveChild,
                    child: e.child,
                  ),
                ),
              ),
            )
            .toList();

        if (widget.direction == Axis.vertical) {
          return Column(
            children: rebuiltItems,
          );
        }

        return Row(
          mainAxisAlignment: widget.axisAlignment,
          children: rebuiltItems,
        );
      },
    );
  }
}
