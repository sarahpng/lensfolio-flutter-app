part of 'onboarding.dart';

class _ScreenState extends ChangeNotifier {
  // ignore: unused_element
  static _ScreenState s(BuildContext context, [listen = false]) =>
      Provider.of<_ScreenState>(context, listen: listen);

  final Map<String, dynamic>? initialData;

  _ScreenState({this.initialData});

  final formKey = GlobalKey<FormBuilderState>();
  final pageController = PageController();

  int _currentPage = 0;
  int get currentPage => _currentPage;
  double get progress => (_currentPage + 1) / 4;

  List<String> _skills = [];
  List<String> get skills => _skills;

  final Map<String, List<String>> _techStacks = {
    'Frontend': [],
    'Backend': [],
    'Database': [],
    'Devops': [],
    'Design': [],
    'Other': [],
  };

  Map<String, List<String>> get techStacks => _techStacks;

  void addTechStack(String category) {
    final state = formKey.currentState;
    if (state == null) return;

    final key = '${_FormKeys.stack}_$category';
    state.save();
    final value = state.value[key] as String?;

    if (value != null && value.trim().isNotEmpty) {
      final list = _techStacks[category];
      if (list != null && !list.contains(value.trim())) {
        list.add(value.trim());
        notifyListeners();
      }
      state.fields[key]?.reset();
    }
  }

  void removeTechStack(String category, String item) {
    _techStacks[category]?.remove(item);
    notifyListeners();
  }

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
    if (_currentPage < 3) {
      final validate = formKey.currentState?.validate() ?? false;
      if (validate) {
        pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    } else {
      try {
        final form = formKey.currentState!;
        final isValid = form.saveAndValidate();
        if (!isValid) return;
        final values = form.value;

        final data = {...?initialData, ...values};
        final cleanValue = data.trimStringValues();

        UserCubit.c(context).register(
          techStack: _techStacks,
          skills: _skills,
          basicInfo: cleanValue,
        );
      } catch (e) {}
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
