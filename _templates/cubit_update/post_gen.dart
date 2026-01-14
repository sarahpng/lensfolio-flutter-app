import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) {
  final name = context.vars['name'].toString().snakeCase;
  final methodName = context.vars['methodName'].toString().camelCase;
  final model = context.vars['model'].toString().pascalCase;
  final featureName = name.pascalCase;

  final cubitPath = 'lib/blocs/$name/cubit.dart';
  final statePath = 'lib/blocs/$name/state.dart';

  _injectCubit(cubitPath, featureName, methodName);
  _injectState(statePath, methodName, model);

  context.logger.info('✅ Method $methodName injected into $name feature!');
}

void _injectCubit(String path, String feature, String method) {
  final file = File(path);
  if (!file.existsSync()) return;

  final snippet =
      '''
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

  final content = file.readAsStringSync();
  file.writeAsStringSync(content.replaceFirst('// [NEW_METHOD]', snippet));
}

void _injectState(String path, String method, String model) {
  final file = File(path);
  if (!file.existsSync()) return;

  var content = file.readAsStringSync();

  // 1. Inject the Field
  content = content.replaceFirst(
    '// [STATE_FIELDS]',
    'final BlocState<$model> $method;\n  // [STATE_FIELDS]',
  );

  // 2. Inject the Constructor Param
  content = content.replaceFirst(
    '// [STATE_CONSTRUCTOR]',
    'required this.$method,\n    // [STATE_CONSTRUCTOR]',
  );

  // 3. Inject the Props
  content = content.replaceFirst(
    '// [STATE_PROPS]',
    '$method,\n    // [STATE_PROPS]',
  );

  file.writeAsStringSync(content);
}
