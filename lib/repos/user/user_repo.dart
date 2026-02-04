import 'package:lensfolio/models/user/user_data.dart';
import 'package:lensfolio/services/app_log.dart';
import 'package:lensfolio/services/fault/faults.dart';
import 'package:lensfolio/services/supabase/supabase.dart';
import 'package:lensfolio/services/supabase/tables.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'user_mocks.dart';
part 'user_parser.dart';
part 'user_data_provider.dart';

class UserRepo {
  static final UserRepo _instance = UserRepo._();
  UserRepo._();

  static UserRepo get ins => _instance;

  /// --- repo functions --- ///

  Future<AuthResponse> login(Map<String, dynamic> values) =>
      _UserProvider.login(values);

  Future<AuthResponse> register(Map<String, dynamic> values) =>
      _UserProvider.register(values);

  Future<UserData> fetch(String email) => _UserProvider.fetch(email);

  Future<UserData> udpate(Map<String, dynamic> values) =>
      _UserProvider.udpate(values);

  // [REPO_METHOD]
}
