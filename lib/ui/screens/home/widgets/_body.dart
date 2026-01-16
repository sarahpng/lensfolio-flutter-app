part of '../home.dart';

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    App.init(context);

    final user = UserCubit.c(context);
    final userData = user.state.login.data;

    return Screen(
      bottomBar: true,
      keyboardHandler: true,
      child: SafeArea(
        child: ScrollColumnExpandable(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          padding: Space.sym(16),
          children: [
            _Header(),
            Space.y.t12,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppButton(
                  label: 'Upload Resume',
                  icon: LucideIcons.share,
                  style: AppButtonStyle.blackBorder,
                  mainAxisSize: MainAxisSize.max,
                ),
                AppButton(
                  label: 'Download CV',
                  icon: LucideIcons.download,
                  style: AppButtonStyle.blackBorder,
                  mainAxisSize: MainAxisSize.max,
                ),
              ],
            ),
            Space.y.t12,
            if (userData?.about != null) _About(),
            Space.y.t12,
            if (userData?.details != null) _Contact(),
          ],
        ),
      ),
    );
  }
}
