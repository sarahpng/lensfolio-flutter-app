part of '../home.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    final user = UserCubit.c(context);
    final userData = user.state.login.data;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              padding: Space.a.t12,
              decoration: BoxDecoration(
                gradient: AppTheme.c.primaryGradient,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  PlatformPopupMenu(
                    items: [
                      PopUpModel(
                        label: 'Upload Resume',
                        icon: LucideIcons.upload,
                      ),
                      PopUpModel(
                        label: 'Download Resume',
                        icon: LucideIcons.download,
                      ),
                      PopUpModel(label: 'Logout', icon: LucideIcons.power),
                    ],
                    onSelected: (value) {},
                    child: Icon(
                      LucideIcons.ellipsis_vertical,
                      size: SpaceToken.t24,
                      color: AppTheme.c.navbarBase,
                    ),
                  ),

                  AppButton(
                    icon: LucideIcons.pen,
                    size: AppButtonSize.small,
                    style: AppButtonStyle.white,
                    padding: Space.sym(10, 4),
                    label: 'Edit',
                  ),
                ],
              ),
            ),
            Positioned(
              top: SpaceToken.t60,
              left: SpaceToken.t12,
              child: Avatar(image: userData!.profilePicture!),
            ),
          ],
        ),
        Space.y.t32,
        Text(userData.fullName, style: AppText.h1b),
        Text(
          userData.designation!,
          style: AppText.h3.w(5) + AppTheme.c.secondary,
        ),
      ],
    );
  }
}
