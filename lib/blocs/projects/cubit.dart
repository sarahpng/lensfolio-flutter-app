import 'dart:async';

import 'package:lensfolio/configs/configs.dart';
// [IMPORT_MARKER]
import 'package:lensfolio/models/projects/project.dart';
import 'package:lensfolio/repos/projects/projects_repo.dart';
import 'package:lensfolio/services/app_log.dart';
import 'package:lensfolio/services/fault/faults.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  static ProjectsCubit c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<ProjectsCubit>(context, listen: listen);

  ProjectsCubit() : super(ProjectsState.def());

  Future<void> fetchAll(int uid) async {
    'Fetch all projects function was called'.appLog(
      level: .info,
      tag: 'PROJECTS_CUBIT: fetchAll()',
    );
    emit(state.copyWith(fetchAll: state.fetchAll.toLoading()));
    try {
      final data = await ProjectsRepo.ins.fetchAll(uid);
      'Projects fetched successfully'.appLog(
        level: .info,
        tag: 'PROJECTS_CUBIT: fetchAll()',
      );
      emit(
        state.copyWith(
          fetchAll: state.fetchAll.toSuccess(data: data),
          projects: data,
        ),
      );
    } on Fault catch (e) {
      emit(state.copyWith(fetchAll: state.fetchAll.toFailed(fault: e)));
    }
  }

  // [NEW_METHOD]

  void reset() => emit(ProjectsState.def());
}
