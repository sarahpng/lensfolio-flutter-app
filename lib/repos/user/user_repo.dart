import 'package:lensfolio/configs/configs.dart';
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

  Future<AuthResponse> register({
    required Map<String, dynamic> techStack,
    required List<String> skills,
    required Map<String, dynamic> basicInfo,
  }) {
    final payload = _UserParser.register(
      techStack: techStack,
      skills: skills,
      basicInfo: basicInfo,
    );
    return _UserProvider.register(payload);
  }

  Future<UserData> fetch(String email) => _UserProvider.fetch(email);

  Future<UserData> udpate(Map<String, dynamic> values) =>
      _UserProvider.udpate(values);

  Future<String?> verify(String email) => _UserProvider.verify(email);

  // [REPO_METHOD]
}
