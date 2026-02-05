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
            validators: FormBuilderValidators.required(),
          ),
        ],
      ),
    );
  }
}
