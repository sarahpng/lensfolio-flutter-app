part of '../login.dart';

class _FormData {
  static Map<String, dynamic> initialValues() {
    if (!kDebugMode) {
      return {};
    }

    return {
      _FormKeys.email: 'sarahwaseem21@gmail.co',
      _FormKeys.password: 'password123',
    };
  }
}
