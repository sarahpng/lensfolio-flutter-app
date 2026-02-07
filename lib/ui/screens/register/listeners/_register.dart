part of '../register.dart';

class _RegisterListener extends StatelessWidget {
  const _RegisterListener();

  @override
  Widget build(BuildContext context) {
    final screenState = _ScreenState.s(context);
    return BlocListener<UserCubit, UserState>(
      listenWhen: (a, b) => a.verify != b.verify,
      listener: (_, state) {
        if (state.verify.isFailed) {
          final values = screenState.formKey.currentState?.value;
          AppRoutes.onboarding.push(context, arguments: values);
          // UIFlash.error(context, state.register.errorMessage);
        }
        if (state.verify.isSuccess) {
          // ''.pop(context);
          UIFlash.error(context, 'User already Exists');
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
