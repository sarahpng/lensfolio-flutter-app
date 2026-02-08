part of '../onboarding.dart';

class _OnBoardingListener extends StatelessWidget {
  const _OnBoardingListener();

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserCubit, UserState>(
      listenWhen: (a, b) => a.register != b.register,
      listener: (_, state) {
        if (state.register.isFailed) {
          UIFlash.error(context, state.register.errorMessage);
        }
        if (state.register.isSuccess) {
          AppRoutes.login.popUntil(context);
          UIFlash.success(context, 'Account created successfully');
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
