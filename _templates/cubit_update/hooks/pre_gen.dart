import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) {
  context.logger.info('--- Direct Injection Started ---');

  final name = context.vars['name'].toString().snakeCase;
  final methodName = context.vars['methodName'].toString().camelCase;
  final model = context.vars['model'].toString().pascalCase;
  final featureName = name.pascalCase;

  // Paths are relative to your project root
  final sourceCubitPath = 'lib/blocs/$name/cubit.dart';
  final sourceStatePath = 'lib/blocs/$name/state.dart';
  final sourceRepoPath = 'lib/repos/$name/${name}_repo.dart';
  final sourceParserPath = 'lib/repos/$name/${name}_parser.dart';
  final sourceMockPath = 'lib/repos/$name/${name}_mocks.dart';
  final sourceProviderPath = 'lib/repos/$name/${name}_data_provider.dart'; 

  // 1. Inject directly into Cubit
  _injectDirectly(
    path: sourceCubitPath,
    transform: (content) => _injectCubitLogic(content, featureName, methodName),
    context: context,
  );

  // 2. Inject directly into State
  _injectDirectly(
    path: sourceStatePath,
    transform: (content) => _injectStateLogic(content, methodName, model),
    context: context,
  );
  // 3. Inject Repo 
  _injectDirectly(
    path: sourceRepoPath,
    transform: (content) => _injectRepoLogic(content, featureName, methodName, model),
    context: context,
  );

  // 4. Inject Parser 
  _injectDirectly(
    path: sourceParserPath,
    transform: (content) => _injectParserLogic(content, methodName),
    context: context,
  );

  // 5. Inject Mock (NEW)
  _injectDirectly(
    path: sourceMockPath,
    transform: (content) => _injectMockLogic(content, methodName),
    context: context,
  );

  _injectDirectly(
    path: sourceProviderPath, // NEW
    transform: (content) => _injectProviderLogic(content, methodName, model),
    context: context,
  );

  context.logger.info('--- Direct Injection Finished ---');
}

/// Helper to modify the actual project file directly
void _injectDirectly({
  required String path,
  required String Function(String) transform,
  required HookContext context,
}) {
  final file = File(path);

  if (!file.existsSync()) {
    context.logger.err('❌ File not found: $path');
    return;
  }

  final originalContent = file.readAsStringSync();
  
  // Anti-duplication check: if the method name is already in the file, STOP.
  if (originalContent.contains(context.vars['methodName'].toString())) {
    context.logger.warn('⚠️ Method already exists in $path. Skipping write.');
    return;
  }

  final updatedContent = transform(originalContent);

  // Overwrite the original file directly
  file.writeAsStringSync(updatedContent, mode: FileMode.write, flush: true);
  context.logger.info('🚀 Directly injected code into: $path');
}

String _injectCubitLogic(String content, String feature, String method) {
  if (content.trim().isEmpty) return content;
  
  final snippet = '''
  Future<void> $method() async {
    emit(state.copyWith($method: state.$method.toLoading()));
    try {
      final data = await ${feature}Repo.ins.$method();
      emit(state.copyWith($method: state.$method.toSuccess(data: data)));
    } on Fault catch (e) {
      emit(state.copyWith($method: state.$method.toFailed(fault: e)));
    }
  }

  // [NEW_METHOD]''';

  return content.replaceFirst('// [NEW_METHOD]', snippet);
}

String _injectStateLogic(String content, String method, String model) {
  if (content.trim().isEmpty) return content;
  var newContent = content;

  newContent = newContent.replaceFirst('// [STATE_FIELDS]', 'final BlocState<$model> $method;\n  // [STATE_FIELDS]');
  newContent = newContent.replaceFirst('// [STATE_CONSTRUCTOR]', 'required this.$method,\n    // [STATE_CONSTRUCTOR]');
  newContent = newContent.replaceFirst('// [STATE_PROPS]', '$method,\n    // [STATE_PROPS]');
  newContent = newContent.replaceFirst('// [STATE_COPYWITH_PARAMS]', 'BlocState<$model>? $method,\n    // [STATE_COPYWITH_PARAMS]');
  newContent = newContent.replaceFirst('// [STATE_COPYWITH_BODY]', '$method: $method ?? this.$method,\n      // [STATE_COPYWITH_BODY]');
  newContent = newContent.replaceFirst('// [STATE_DEF];', '$method = BlocState(),\n    // [STATE_DEF];');

  return newContent;
}

String _injectRepoLogic(String content, String feature, String method, String model) {
  if (content.trim().isEmpty) return content;

  final snippet = '''
  Future<$model> $method() => _${feature}Provider.$method();

  // [REPO_METHOD]''';

  if (!content.contains('// [REPO_METHOD]')) {
    return '/* ERROR: // [REPO_METHOD] not found. */\n\n$content';
  }

  return content.replaceFirst('// [REPO_METHOD]', snippet);
}

String _injectParserLogic(String content, String method) {
  if (content.trim().isEmpty) return content;

  final snippet = '''
  static Map $method(Map data) => data;

  // [NEW_PARSER_METHOD]''';

  if (!content.contains('// [NEW_PARSER_METHOD]')) {
    return '/* ERROR: // [NEW_PARSER_METHOD] not found. */\n\n$content';
  }

  return content.replaceFirst('// [NEW_PARSER_METHOD]', snippet);
}

// NEW: Mock Injection Logic
String _injectMockLogic(String content, String method) {
  if (content.trim().isEmpty) return content;

  final snippet = '''
  static Future<Map<String, dynamic>> $method() {
    return Future.value({ 'status': 200, 'message': 'mock', 'data': {}});
  }

  // [NEW_MOCK_METHOD]''';

  if (!content.contains('// [NEW_MOCK_METHOD]')) {
    return '/* ERROR: // [NEW_MOCK_METHOD] not found. */\n\n$content';
  }

  return content.replaceFirst('// [NEW_MOCK_METHOD]', snippet);
}

// NEW: Data Provider Injection Logic
String _injectProviderLogic(String content, String method, String model) {
  if (content.trim().isEmpty) return content;

  final snippet = '''
  static Future<$model> $method() async {
    try {
      // ignore: unused_local_variable
      final raw = <String, dynamic>{};
      // Logic for API call would go here
      return $model.fromJson(raw);
    } catch (e, st) {
      if (e is DioException) {
        throw HttpFault.fromDioException(e, st);
      }
      throw UnknownFault('Something went wrong!', st);
    }
  }

  // [NEW_PROVIDER_METHOD]''';

  if (!content.contains('// [NEW_PROVIDER_METHOD]')) {
    return '/* ERROR: // [NEW_PROVIDER_METHOD] not found. */\n\n$content';
  }

  return content.replaceFirst('// [NEW_PROVIDER_METHOD]', snippet);
}