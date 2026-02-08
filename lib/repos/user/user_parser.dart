// ignore_for_file: unused_element
part of 'user_repo.dart';

class _UserParser {
  static Map login(Map data) => data;

  static Map<String, dynamic> register({
    required Map<String, dynamic> techStack,
    required List<String> skills,
    required Map<String, dynamic> basicInfo,
  }) {
    Map<String, dynamic> payload = {};
    payload['email'] = basicInfo['email'];
    payload['password'] = basicInfo['password'];
    payload['full_name'] = basicInfo['fullName'];
    payload['contact_details'] = {
      'phoneNumber': basicInfo['phone'],
      'address': basicInfo['location'] ?? '',
    };
    payload['skills'] = skills;
    // payload['techStack'] = techStack;
    return payload;
  }

  static Map verify(Map data) => data;

  // [NEW_PARSER_METHOD]
}
