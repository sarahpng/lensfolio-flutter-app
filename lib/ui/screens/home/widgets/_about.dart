part of '../home.dart';

class _About extends StatelessWidget {
  const _About();

  @override
  Widget build(BuildContext context) {
    final user = UserCubit.c(context);
    final userData = user.state.login.data;

    return Column(
      children: [
        // about me
        Container(
          padding: Space.a.t12,
          decoration: BoxDecoration(
            color: AppTheme.c.background,
            borderRadius: 7.radius(),
            border: Border.all(
              color: AppTheme.c.subText.withValues(alpha: 0.4),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('About', style: AppText.h1b),
              Space.y.t04,
              Text(userData!.about!, style: AppText.b1 + AppTheme.c.subText),
            ],
          ),
        ),
      ],
    );
  }
}
