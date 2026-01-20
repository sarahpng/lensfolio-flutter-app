import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lensfolio/configs/configs.dart';
import 'package:lensfolio/ui/widgets/designs/pop_up_menu/_model.dart';

class PlatformPopupMenu extends StatelessWidget {
  final List<PopUpModel> items;
  final Widget child;
  final Function(String) onSelected;

  const PlatformPopupMenu({
    super.key,
    required this.items,
    required this.child,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return PopupMenuButton<String>(
        onSelected: onSelected,
        offset: const Offset(0, 30), // Positions it below the button
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Colors.white.withValues(alpha: 0.9), // iOS frosted glass look
        itemBuilder: (context) => items
            .map(
              (item) => PopupMenuItem(
                value: item.label,
                child: Row(
                  children: [
                    Icon(
                      item.icon,
                      size: SpaceToken.t16,
                      color: item.label == 'Logout'
                          ? CupertinoColors.destructiveRed
                          : CupertinoColors.activeBlue,
                    ),
                    Space.x.t08,
                    Text(
                      item.label,
                      style: AppText.h3.copyWith(
                        color: item.label == 'Logout'
                            ? CupertinoColors.destructiveRed
                            : CupertinoColors.activeBlue,
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
        child: child,
      );
    }

    return PopupMenuButton<String>(
      onSelected: onSelected,
      itemBuilder: (context) => items.map((item) {
        return PopupMenuItem(
          value: item.label,
          child: Row(
            children: [
              Icon(
                item.icon,
                size: SpaceToken.t16,
                color: item.label == 'Logout'
                    ? AppTheme.c.dangerBase
                    : AppTheme.c.secondary,
              ),
              Space.x.t08,
              Text(
                item.label,
                style: AppText.h3.copyWith(
                  color: item.label == 'Logout'
                      ? AppTheme.c.dangerBase
                      : AppTheme.c.secondary,
                ),
              ),
            ],
          ),
        );
      }).toList(),
      child: child,
    );
  }
}
