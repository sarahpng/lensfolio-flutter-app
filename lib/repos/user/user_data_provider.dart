part of 'user_repo.dart';

class _UserProvider {
  static Future<UserData> fetch(String email) async {
    print('email is $email');
    try {
      // final user = await _UserMocks.login(email);
      final user = await AppSupabase.supabase
          .from(SupaTables.users)
          .select('*')
          .eq('email', email)
          .single();
      // return UserData.fromJson(user['data']);
      print(user);
      return UserData.fromJson(user);
    } catch (e, st) {
      if (e is AuthApiException) {
        throw SupaAuthFault.fromAuthApiException(e, st);
      }
      if (e is PostgrestException) {
        throw SupaPostgresFault.fromPostgrestException(e, st);
      }
      throw UnknownFault('Something went wrong!', st);
    }
  }

  static Future<AuthResponse> login(Map<String, dynamic> values) async {
    try {
      final authResponse = await AppSupabase.supabase.auth.signInWithPassword(
        email: values['email'],
        password: values['password'],
      );
      return authResponse;
    } catch (e, st) {
      if (e is AuthApiException) {
        throw SupaAuthFault.fromAuthApiException(e, st);
      }
      throw UnknownFault('Something went wrong!', st);
    }
  }

  static Future<AuthResponse> register(Map<String, dynamic> values) async {
    try {
      final authResponse = await AppSupabase.supabase.auth.signUp(
        email: values['email'],
        password: values['password'],
      );
      final data = await AppSupabase.supabase
          .from(SupaTables.users)
          .insert(values..remove('password'))
          .select();
      print('data is $data');
      data.appLog();
      return authResponse;
    } catch (e, st) {
      if (e is AuthApiException) {
        throw SupaAuthFault.fromAuthApiException(e, st);
      }
      throw UnknownFault('Something went wrong!', st);
    }
  }

  static Future<UserData> udpate(Map<String, dynamic> values) async {
    try {
      final userId = values['id'] as int;
      final updatedUser = await AppSupabase.supabase
          .from(SupaTables.users)
          .update(values)
          .eq('id', userId)
          .select()
          .single();

      final raw = updatedUser['data'] as Map<String, dynamic>;
      return UserData.fromJson(raw);
    } catch (e, st) {
      if (e is AuthApiException) {
        throw SupaAuthFault.fromAuthApiException(e, st);
      }
      if (e is PostgrestException) {
        throw SupaPostgresFault.fromPostgrestException(e, st);
      }
      throw UnknownFault('Something went wrong!', st);
    }
  }

  // [NEW_PROVIDER_METHOD]
  static Future<String?> verify(String email) async {
    try {
      final user = await AppSupabase.supabase
          .from(SupaTables.users)
          .select('email')
          .eq('email', email)
          .single();
      print('user is $user');
      if (user.isAvailable) return user['email'];
      return null;
    } catch (e, st) {
      print('error is $e');
      if (e is AuthApiException) {
        throw SupaAuthFault.fromAuthApiException(e, st);
      }
      throw UnknownFault('Something went wrong!', st);
    }
  }
}
