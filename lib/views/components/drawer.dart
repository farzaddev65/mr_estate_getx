import 'package:sample_getx/views/components/components.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    required this.list,
    this.backgroundColor,
    this.iconsColor,
    this.iconsSize,
    this.borderRadius,
    this.width,
    super.key,
  });

  final List<DrawerItems> list;
  final Color? iconsColor;
  final Color? backgroundColor;
  final double? iconsSize;
  final double? borderRadius;
  final double? width;

  @override
  Widget build(final BuildContext context) => Drawer(
    backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(borderRadius??0),
            bottomRight: Radius.circular(borderRadius??0),
          ),

        ),
        width: width,
        child: ListView(
          children: list
              .map((final DrawerItems e) => ListTile(
                    leading: UImage(
                      e.icon,
                      color: e.iconColor ?? iconsColor ?? Colors.black87,
                      size: e.iconSize ?? iconsSize ?? 32,
                    ),
                    title: Text(e.title),
                    onTap: e.onTap,
                    trailing: e.trailing,
                  ))
              .toList(),
        ),
      );
}

class DrawerItems {
  DrawerItems({
    required this.title,
    required this.icon,
    required this.onTap,
    this.trailing,
    this.iconColor,
    this.iconSize,
  });

  final String title;
  final String icon;
  final VoidCallback onTap;
  final Widget? trailing;
  final Color? iconColor;
  final double? iconSize;
}
