import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:lensfolio/configs/configs.dart';
import 'package:lensfolio/ui/widgets/core/button/button.dart';
import 'package:provider/provider.dart';

import 'package:lensfolio/ui/widgets/core/screen/screen.dart';

part '_state.dart';

part 'widgets/_body.dart';
part 'widgets/_header.dart';

part 'widgets/card/_project_card.dart';

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
