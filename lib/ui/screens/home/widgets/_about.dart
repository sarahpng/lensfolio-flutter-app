part of '../home.dart';

class _About extends StatelessWidget {
  const _About();

  @override
  Widget build(BuildContext context) {
    final user = UserCubit.c(context);
    final userData = user.state.login.data!;
    if (userData.about == null) return SizedBox.shrink();

    return Container(
      padding: Space.a.t16,
      decoration: AppProps.boxdecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About', style: AppText.h1b),
          Space.y.t04,
          Text(userData.about!, style: AppText.b1 + AppTheme.c.subText),
        ],
      ),
    );
  }
}
