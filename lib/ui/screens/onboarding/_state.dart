part of 'onboarding.dart';

class _ScreenState extends ChangeNotifier {
  // ignore: unused_element
  static _ScreenState s(BuildContext context, [listen = false]) =>
      Provider.of<_ScreenState>(context, listen: listen);

  final formKey = GlobalKey<FormBuilderState>();
  final pageController = PageController();

  int _currentPage = 0;
  int get currentPage => _currentPage;
  double get progress => (_currentPage + 1) / 3;

  List<String> _skills = [];
  List<String> get skills => _skills;

  void addSkill() {
    final state = formKey.currentState;
    if (state == null) return;

    state.save();
    final value = state.value[_FormKeys.skill] as String?;

    if (value != null && value.trim().isNotEmpty) {
      if (!_skills.contains(value.trim())) {
        _skills.add(value.trim());
        notifyListeners();
      }
      state.fields[_FormKeys.skill]?.reset();
    }
  }

  void removeSkill(String skill) {
    _skills.remove(skill);
    notifyListeners();
  }

  void onPageChanged(int index) {
    _currentPage = index;
    notifyListeners();
  }

  void onNext(BuildContext context) {
    if (_currentPage < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      if (formKey.currentState?.saveAndValidate() ?? false) {
        // Handle submit
        print(formKey.currentState?.value);
      }
    }
  }

  void onBack(BuildContext context) {
    if (_currentPage > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      ''.pop(context);
    }
  }

  void onSkip(BuildContext context) {
    if (_currentPage > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
