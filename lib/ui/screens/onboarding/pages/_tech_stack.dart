part of '../onboarding.dart';

class _TechStack extends StatelessWidget {
  const _TechStack();

  @override
  Widget build(BuildContext context) {
    final screenState = _ScreenState.s(context, true);

    return SingleChildScrollView(
      padding: Space.a.t20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Tech Stack', style: AppText.h1b),
          Text(
            'Your technical expertise',
            style: AppText.b1b + AppTheme.c.subText,
          ),
          Space.y.t20,

          ...screenState.techStacks.keys.map((category) {
            return _Card(category: category);
          }),
          Row(
            children: [
              Icon(
                LucideIcons.info,
                color: AppTheme.c.subText,
                size: SpaceToken.t12,
              ),
              Space.x.t04,
              Text('Optional', style: AppText.b1 + AppTheme.c.subText),
            ],
          ),
        ],
      ),
    );
  }
}
