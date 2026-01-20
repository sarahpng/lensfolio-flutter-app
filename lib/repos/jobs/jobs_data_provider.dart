part of 'jobs_repo.dart';

class _JobsProvider {
  static Future<JobFetchResponse> fetch() async {
    try {
      // ignore: unused_local_variable
      final response = await _JobsMocks.fetch();
      // ignore: unused_local_variable
      await 1.seconds.delay;
      final raw = response['data'] as Map<String, Object>;
      // Logic for API call would go here
      return JobFetchResponse.fromJson(raw);
    } catch (e, st) {
      print(e);
      if (e is DioException) {
        throw HttpFault.fromDioException(e, st);
      }
      throw UnknownFault('Something went wrong!', st);
    }
  }

  // [NEW_PROVIDER_METHOD]
}
