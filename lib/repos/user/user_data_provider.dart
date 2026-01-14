part of 'user_repo.dart';

class _UserProvider {
  static Future<UserData> login() async {
    try {
      // ignore: unused_local_variable
      final raw = <String, dynamic>{};
      // Logic for API call would go here
      return UserData.fromJson(raw);
    } catch (e, st) {
      if (e is DioException) {
        throw HttpFault.fromDioException(e, st);
      }
      throw UnknownFault('Something went wrong!', st);
    }
  }
}
