part of '../onboarding.dart';

class _Contacts extends StatelessWidget {
  const _Contacts();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: Space.a.t20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contact Info', style: AppText.h1b),
          Text(
            'How can employers reach you?',
            style: AppText.b1b + AppTheme.c.subText,
          ),
          Space.y.t20,
          AppFormTextInput(
            name: _FormKeys.phone,
            heading: 'Phone Number',
            placeholder: 'Enter your phone number',
            validators: FormBuilderValidators.required(),
            keyboardType: TextInputType.phone,
          ),
          Space.y.t20,
          AppFormTextInput(
            name: _FormKeys.location,
            heading: 'Location',
            placeholder: 'City, Country',
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
        ],
      ),
    );
  }
}
