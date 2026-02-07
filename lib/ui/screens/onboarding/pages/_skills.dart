part of '../onboarding.dart';

class _Skills extends StatelessWidget {
  const _Skills();

  @override
  Widget build(BuildContext context) {
    final screenState = _ScreenState.s(context, true);

    return SingleChildScrollView(
      padding: Space.a.t20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Skills', style: AppText.h1b),
          Text('What are you good at?', style: AppText.b1),
          Space.y.t20,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: AppFormTextInput(
                  name: _FormKeys.skill,
                  heading: 'Skill',
                  placeholder: 'e.g. Flutter, React, Python',
                ),
              ),
              Space.x.t12,
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: AppButton(
                  icon: LucideIcons.plus,
                  onTap: screenState.addSkill,
                ),
              ),
            ],
          ),
          Space.y.t08,
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
          Space.y.t20,
          Wrap(
            spacing: SpaceToken.t08,
            runSpacing: SpaceToken.t08,
            children: screenState.skills
                .map(
                  (e) => Chip(
                    label: Text(e),
                    onDeleted: () => screenState.removeSkill(e),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
