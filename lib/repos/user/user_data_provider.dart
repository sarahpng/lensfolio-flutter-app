part of 'user_repo.dart';

class _UserProvider {
  static Future<UserData> login(Map<String, dynamic> values) async {
    try {
      final response = await _UserMocks.login(values['email']);
      // ignore: unused_local_variable
      await 1.seconds.delay;

      final raw = response['data'] as Map<String, dynamic>;
      // Logic for API call would go here
      return UserData.fromJson(raw);
    } catch (e, st) {
      if (e is DioException) {
        throw HttpFault.fromDioException(e, st);
      }
      throw UnknownFault('Something went wrong!', st);
    }
  }

  static Future<UserData> register() async {
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

  // [NEW_PROVIDER_METHOD]
}
