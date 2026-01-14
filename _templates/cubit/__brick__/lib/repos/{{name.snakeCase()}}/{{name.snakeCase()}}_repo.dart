import 'package:dio/dio.dart';
import 'package:lensfolio/models/{{name.snakeCase()}}/{{modelDir.snakeCase()}}.dart';
import 'package:lensfolio/services/fault/faults.dart';

part '{{name.snakeCase()}}_mocks.dart';
part '{{name.snakeCase()}}_parser.dart';
part '{{name.snakeCase()}}_data_provider.dart';

class {{name.pascalCase()}}Repo {
  static final {{name.pascalCase()}}Repo _instance = {{name.pascalCase()}}Repo._();
  {{name.pascalCase()}}Repo._();

  static {{name.pascalCase()}}Repo get ins => _instance;

  /// --- repo functions --- ///

  Future<{{model.pascalCase()}}> {{methodName.camelCase()}}() => _{{name.pascalCase()}}Provider.{{methodName.camelCase()}}();
}