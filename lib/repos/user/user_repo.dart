import 'package:dio/dio.dart';
import 'package:lensfolio/models/user/user_data.dart';
import 'package:lensfolio/services/fault/faults.dart';

part 'user_mocks.dart';
part 'user_parser.dart';
part 'user_data_provider.dart';

class UserRepo {
  static final UserRepo _instance = UserRepo._();
  UserRepo._();

  static UserRepo get ins => _instance;

  /// --- repo functions --- ///

  Future<UserData> login() => _UserProvider.login();
}