part of 'projects_repo.dart';

class _ProjectsProvider {
  static Future<List<Projects>> fetchAll(int uid) async {
    try {
      final resp = await _ProjectsMocks.fetchAll(uid);
      await 1.seconds.delay;
      final raw = resp['data'] as List<dynamic>;
      // Logic for API call would go here
      return raw
          .map((e) => Projects.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (e, st) {
      if (e is DioException) {
        throw HttpFault.fromDioException(e, st);
      }
      throw UnknownFault('Something went wrong!', st);
    }
  }

  // [NEW_PROVIDER_METHOD]
}
