part of '../home.dart';

class _PreferredRoles extends StatelessWidget {
  const _PreferredRoles();

  @override
  Widget build(BuildContext context) {
    final user = UserCubit.c(context);
    final userData = user.state.login.data!;
    final prefRoles = userData.preferredRoles;
    if (prefRoles.isEmpty) return SizedBox.shrink();

    return Container(
      padding: Space.a.t16,
      decoration: AppProps.boxdecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Preferred Roles', style: AppText.h1b),
          Space.y.t04,
          Wrap(
            spacing: SpaceToken.t04,
            children: prefRoles
                .map(
                  (role) => Chip(
                    label: Text(
                      role,
                      style:
                          AppText.b1 +
                          AppTheme.c.secondary.withValues(alpha: 0.9),
                    ),
                    backgroundColor: AppTheme.c.secondary.withValues(
                      alpha: 0.1,
                    ),
                    padding: Space.z,
                    shape: RoundedRectangleBorder(borderRadius: 15.radius()),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
