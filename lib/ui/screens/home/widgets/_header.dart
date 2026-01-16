part of '../home.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    final user = UserCubit.c(context);
    final userData = user.state.login.data;
    return Container(
      padding: Space.a.t12,
      decoration: BoxDecoration(gradient: AppTheme.c.primaryGradient),
      child: Row(
        children: [
          Avatar(image: userData!.profilePicture!),
          Space.x.t12,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userData.fullName, style: AppText.h1b + AppColors.white),
              Text(userData.email, style: AppText.b1 + AppColors.white),
              Space.y.t08,
              Row(
                children: [
                  Icon(LucideIcons.map_pin, size: 17, color: AppColors.white),
                  Space.x.t04,
                  Text(
                    userData.designation!,
                    style: AppText.b2 + AppColors.white,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
