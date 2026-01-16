part of '../home.dart';

class _Contact extends StatelessWidget {
  const _Contact();

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
            // boxShadow: [
            //   BoxShadow(
            //     color: AppTheme.c.subText.withValues(alpha: 0.3),
            //     spreadRadius: 1,
            //     blurRadius: 3,
            //     offset: Offset(0, 3),
            //   ),
            // ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Contact', style: AppText.h1b),
              Space.y.t04,
              if (userData!.details!.address.isNotEmpty) ...[
                Row(
                  children: [
                    Text(
                      userData.details!.address,
                      style: AppText.b1 + AppTheme.c.subText,
                    ),
                  ],
                ),
              ],
              if (userData.details!.phoneNumber.isNotEmpty) ...[
                Row(
                  children: [
                    Text(
                      userData.details!.phoneNumber,
                      style: AppText.b1 + AppTheme.c.subText,
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
