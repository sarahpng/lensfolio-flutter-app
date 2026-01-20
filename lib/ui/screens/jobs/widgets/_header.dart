part of '../jobs.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Find Jobs', style: AppText.h1b),
        Space.y.t04,
        Text(
          'Discover your next opportunity',
          style: AppText.b1 + AppTheme.c.subText,
        ),
        Space.y.t12,
        AppFormTextInput(
          name: '',
          placeholder: 'Search Jobs',
          prefixIcon: LucideIcons.search,
          suffixIcon: LucideIcons.funnel,
        ),
      ],
    );
  }
}
