import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:lensfolio/blocs/user/cubit.dart';
import 'package:lensfolio/configs/configs.dart';
import 'package:lensfolio/ui/widgets/core/button/button.dart';
import 'package:lensfolio/ui/widgets/designs/avatar/avatar.dart';
import 'package:lensfolio/ui/widgets/headless/scroll_column_expandable.dart';
import 'package:provider/provider.dart';

import 'package:lensfolio/ui/widgets/core/screen/screen.dart';

part '_state.dart';
part 'widgets/_body.dart';
part 'widgets/_header.dart';
part 'widgets/_about.dart';
part 'widgets/_contacts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<_ScreenState>(
      create: (_) => _ScreenState(),
      child: const _Body(),
    );
  }
}
