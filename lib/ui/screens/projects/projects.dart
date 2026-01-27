import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:lensfolio/blocs/projects/cubit.dart';
import 'package:lensfolio/blocs/user/cubit.dart';
import 'package:lensfolio/configs/configs.dart';
import 'package:lensfolio/services/app_log.dart';
import 'package:lensfolio/ui/widgets/core/button/button.dart';
import 'package:provider/provider.dart';

import 'package:lensfolio/ui/widgets/core/screen/screen.dart';

part '_state.dart';

part 'widgets/_body.dart';
part 'widgets/_header.dart';

part 'widgets/card/_project_card.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  @override
  void initState() {
    final cubit = UserCubit.c(context);
    final user = cubit.state.login.data!;
    user.id.appLog(tag: 'USER_ID');
    ProjectsCubit.c(context).fetchAll(user.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<_ScreenState>(
      create: (_) => _ScreenState(),
      child: const _Body(),
    );
  }
}
