import 'dart:async';

import 'package:lensfolio/configs/configs.dart';
// [IMPORT_MARKER]
import 'package:lensfolio/models/jobs/job.dart';
import 'package:lensfolio/models/jobs/job_fetch_response.dart';
import 'package:lensfolio/repos/jobs/jobs_repo.dart';
import 'package:lensfolio/services/fault/faults.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'state.dart';

class JobsCubit extends Cubit<JobsState> {
  static JobsCubit c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<JobsCubit>(context, listen: listen);

  JobsCubit() : super(JobsState.def());

  Future<void> fetch() async {
    emit(state.copyWith(fetch: state.fetch.toLoading()));
    try {
      final data = await JobsRepo.ins.fetch();
      emit(
        state.copyWith(
          fetch: state.fetch.toSuccess(data: data),
          jobs: data,
        ),
      );
    } on Fault catch (e) {
      emit(state.copyWith(fetch: state.fetch.toFailed(fault: e)));
    }
  }

  // [NEW_METHOD]

  void reset() => emit(JobsState.def());
}
