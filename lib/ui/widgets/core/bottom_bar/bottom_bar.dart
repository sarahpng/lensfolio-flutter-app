import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:lensfolio/configs/configs.dart';
import 'package:lensfolio/router/routes.dart';
import 'package:lensfolio/ui/widgets/headless/app_touch.dart';

part '_model.dart';
part '_data.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final currentPath = context.currentPath;

    return Container(
      padding: Space.z.sb(8).t(8),
      color: AppTheme.c.background,
      child: Material(
        color: Colors.transparent,
        child: Row(
          children: _tabs.map((tab) {
            final isActive = tab.path == currentPath;
            final color = isActive ? AppTheme.c.primary : AppTheme.c.subText;
            final textColor = isActive ? Colors.white : AppTheme.c.subText;
            return Expanded(
              child: AppTouch(
                onTap: () {
                  if (isActive) return;
                  tab.path.pushReplace(context);
                },
                child: Column(
                  children: [
                    Space.x.t04,
                    Container(
                      padding: Space.a.t08,
                      decoration: BoxDecoration(
                        borderRadius: 10.radius(),
                        gradient: isActive ? AppTheme.c.primaryGradient : null,
                      ),
                      child: Icon(tab.icon, color: textColor),
                    ),
                    Space.y.t04,
                    Text(tab.label, style: AppText.b1b + color),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
