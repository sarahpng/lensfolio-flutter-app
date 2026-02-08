import 'package:flutter/material.dart';
import 'package:lensfolio/blocs/projects/cubit.dart';

class SetupCubit {
  static void setupCubit(BuildContext context, String uid) {
    ProjectsCubit.c(context).setupUid(uid);
  }

  static void resetCubit(BuildContext context) {
    ProjectsCubit.c(context).resetUid();
  }
}
