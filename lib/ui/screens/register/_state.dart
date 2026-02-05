part of 'register.dart';

class _ScreenState extends ChangeNotifier {
  // ignore: unused_element
  static _ScreenState s(BuildContext context, [listen = false]) =>
      Provider.of<_ScreenState>(context, listen: listen);
  final formKey = GlobalKey<FormBuilderState>();

  void onSubmit(BuildContext context) {
    try {
      final form = formKey.currentState!;
      final isValid = form.saveAndValidate();
      if (!isValid) return;
      final values = form.value;
      final cleanValue = values.trimStringValues();

      AppRoutes.onboarding.push(context, arguments: cleanValue);
    } catch (e) {
      print(e);
    }
  }
}
