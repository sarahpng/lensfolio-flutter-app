part of 'jobs.dart';

class _ScreenState extends ChangeNotifier {
  // ignore: unused_element
  static _ScreenState s(BuildContext context, [listen = false]) =>
      Provider.of<_ScreenState>(context, listen: listen);

  _FiltersType? _filtersType = _FiltersType.allJobs;
  _FiltersType? get getFiltersType => _filtersType;

  void setFiltersType(_FiltersType? value) {
    _filtersType = value;
    notifyListeners();
  }
}

enum _FiltersType {
  allJobs(type: 'all-jobs'),
  savedJobs(type: 'saved-jobs'),
  fullTime(type: 'full_time'),
  partTime(type: 'part_time'),
  contract(type: 'contract');

  const _FiltersType({required this.type});
  final String type;
}
