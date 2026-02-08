part of 'projects_repo.dart';

class _ProjectsProvider {
  static Future<List<Projects>> fetchAll(String uid) async {
    try {
      // await 1.seconds.delay;
      final resp = await AppSupabase.supabase
          .from(SupaTables.projects)
          .select('*')
          .eq('uid', uid);
      final raw = resp as List<dynamic>;
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
