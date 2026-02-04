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
          padding: Space.a.t16,
          decoration: AppProps.boxdecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Contact', style: AppText.h1b),
              Space.y.t04,
              Row(
                children: [
                  Icon(
                    LucideIcons.mail,
                    size: SpaceToken.t16,
                    color: AppTheme.c.subText,
                  ),
                  Space.x.t08,
                  Text(userData!.email, style: AppText.b1 + AppTheme.c.subText),
                ],
              ),
              if (userData.contactDetails!.address.isNotEmpty) ...[
                Space.y.t04,
                Row(
                  children: [
                    Icon(
                      LucideIcons.map_pin,
                      size: SpaceToken.t16,
                      color: AppTheme.c.subText,
                    ),
                    Space.x.t08,
                    Text(
                      userData.contactDetails!.address,
                      style: AppText.b1 + AppTheme.c.subText,
                    ),
                  ],
                ),
              ],
              if (userData.contactDetails!.phoneNumber.isNotEmpty) ...[
                Space.y.t04,
                Row(
                  children: [
                    Icon(
                      LucideIcons.phone,
                      size: SpaceToken.t16,
                      color: AppTheme.c.subText,
                    ),
                    Space.x.t08,
                    Text(
                      userData.contactDetails!.phoneNumber,
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
