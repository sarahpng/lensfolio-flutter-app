import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:lensfolio/blocs/jobs/cubit.dart';
import 'package:lensfolio/configs/configs.dart';
import 'package:lensfolio/models/jobs/job.dart';
import 'package:lensfolio/skeleton/skeleton.dart';
import 'package:lensfolio/ui/widgets/core/button/button.dart';
import 'package:lensfolio/ui/widgets/designs/avatar/avatar.dart';
import 'package:lensfolio/ui/widgets/forms/forms.dart';
import 'package:lensfolio/utils/html_parser.dart';
import 'package:provider/provider.dart';

import 'package:lensfolio/ui/widgets/core/screen/screen.dart';

part '_state.dart';

part 'widgets/_body.dart';
part 'widgets/_header.dart';
part 'widgets/_filters.dart';
part 'widgets/_placeholder.dart';

part 'widgets/card/_job_card.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({super.key});

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  @override
  void initState() {
    print('init state');
    JobsCubit.c(context).fetch();
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
