import 'dart:async';

import 'package:lensfolio/configs/configs.dart';
// [IMPORT_MARKER]
import 'package:lensfolio/models/user/user_data.dart';
import 'package:lensfolio/repos/user/user_repo.dart';
import 'package:lensfolio/services/fault/faults.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'state.dart';

class UserCubit extends Cubit<UserState> {
  static UserCubit c(BuildContext context, [bool listen = false]) =>
      BlocProvider.of<UserCubit>(context, listen: listen);

  UserCubit() : super(UserState.def());

  Future<void> login(Map<String, dynamic> values) async {
    emit(state.copyWith(login: state.login.toLoading()));
    try {
      final authResponse = await UserRepo.ins.login(values);
      final user = authResponse.user;
      final userData = await UserRepo.ins.fetch(user!.email!)
        ..toCache();
      emit(state.copyWith(login: state.login.toSuccess(data: userData)));
    } on Fault catch (e) {
      emit(state.copyWith(login: state.login.toFailed(fault: e)));
    }
  }

  Future<void> register({
    required Map<String, dynamic> techStack,
    required List<String> skills,
    required Map<String, dynamic> basicInfo,
  }) async {
    emit(state.copyWith(register: state.register.toLoading()));
    try {
      await UserRepo.ins.register(
        techStack: techStack,
        skills: skills,
        basicInfo: basicInfo,
      );
      emit(state.copyWith(register: state.register.toSuccess()));
    } on Fault catch (e) {
      emit(state.copyWith(register: state.register.toFailed(fault: e)));
    }
  }

  Future<void> verify(Map<String, dynamic> values) async {
    emit(state.copyWith(verify: state.verify.toLoading()));
    try {
      final data = await UserRepo.ins.verify(values['email']);
      emit(state.copyWith(verify: state.verify.toSuccess(data: data)));
    } on Fault catch (e) {
      emit(state.copyWith(verify: state.verify.toFailed(fault: e)));
    }
  }

  // [NEW_METHOD]

  void reset() => emit(UserState.def());
}
