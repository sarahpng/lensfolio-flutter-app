part of '../register.dart';

class _FormData {
  static Map<String, dynamic> initialValues() {
    if (!kDebugMode) {
      return {};
    }

    return {
      _FormKeys.fullName: 'sarah',
      _FormKeys.email: 'sarahwaseem21@gmail.com',
      _FormKeys.password: 'password123',
      _FormKeys.confirmPassword: 'password123',
    };
  }
}
