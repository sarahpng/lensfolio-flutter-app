part of '../projects.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Projects', style: AppText.h1b),
            Space.y.t04,
            Text(
              'Showcase your best work and projects',
              style: AppText.b1 + AppTheme.c.subText,
            ),
          ],
        ),
        AppButton(
          label: 'Add',
          style: AppButtonStyle.secondary,
          icon: LucideIcons.plus,
        ),
      ],
    );
  }
}
