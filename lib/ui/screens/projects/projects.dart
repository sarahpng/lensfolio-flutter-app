import 'package:flutter/material.dart';
import 'package:lensfolio/configs/configs.dart';
import 'package:lensfolio/ui/widgets/headless/scroll_column_expandable.dart';
import 'package:provider/provider.dart';

import 'package:lensfolio/ui/widgets/core/screen/screen.dart';

part '_state.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<_ScreenState>(
      create: (_) => _ScreenState(),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Screen(
      bottomBar: true,
      keyboardHandler: true,
      child: SafeArea(
        child: ScrollColumnExpandable(
          padding: Space.a.t20,
          crossAxisAlignment: .stretch,
          children: const [],
        ),
      ),
    );
  }
}
