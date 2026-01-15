part of 'jobs_repo.dart';

class _JobsProvider {
  static Future<Job> fetch() async {
    try {
      // ignore: unused_local_variable
      final raw = <String, dynamic>{};
      // Logic for API call would go here
      return Job.fromJson(raw);
    } catch (e, st) {
      if (e is DioException) {
        throw HttpFault.fromDioException(e, st);
      }
      throw UnknownFault('Something went wrong!', st);
    }
  }

  // [NEW_PROVIDER_METHOD]
}