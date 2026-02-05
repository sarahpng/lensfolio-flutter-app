part of '../onboarding.dart';

class _PreferredRoles extends StatelessWidget {
  const _PreferredRoles();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: Space.a.t20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Preferences', style: AppText.h1b),
          Space.y.t20,
          AppFormTextInput(
            name: _FormKeys.preferredRole,
            heading: 'Preferred Role',
            placeholder: 'e.g. Senior Developer',
            validators: FormBuilderValidators.required(),
          ),
        ],
      ),
    );
  }
}
