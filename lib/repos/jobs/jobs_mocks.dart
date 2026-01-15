// ignore_for_file: unused_element
part of 'jobs_repo.dart';

class _JobsMocks {
  static Future<Map<String, dynamic>> fetch() {
    return Future.value({ 'status': 200, 'message': 'mock', 'data': {}});
  }

  // [NEW_MOCK_METHOD]
}