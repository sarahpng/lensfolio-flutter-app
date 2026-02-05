part of '../register.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: Space.a.t08,
          decoration: BoxDecoration(
            color: AppTheme.c.primary,
            borderRadius: AppProps.radiusAll,
          ),
          child: Icon(LucideIcons.briefcase, size: 50, color: Colors.white),
        ),
        Space.y.t12,
        Text('Join Us Today', style: AppText.h1b),
        Space.y.t04,
        Text('Create your account to get started', style: AppText.b1),
      ],
    );
  }
}
