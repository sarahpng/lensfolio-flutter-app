part of '../onboarding.dart';

class _FormData {
  static Map<String, dynamic> initialValues() {
    if (!kDebugMode) {
      return {};
    }
    return {
      _FormKeys.phone: '+1234567890',
      _FormKeys.location: 'San Francisco, CA',
      // _FormKeys.skill: 'Flutter',
      // _FormKeys.stack: 'Mobile Development',
      _FormKeys.preferredRole: 'Senior Flutter Developer',
    };
  }
}
