import 'package:dio/dio.dart';
import 'package:lensfolio/configs/configs.dart';
import 'package:lensfolio/models/projects/project.dart';
import 'package:lensfolio/services/fault/faults.dart';

part 'projects_mocks.dart';
part 'projects_parser.dart';
part 'projects_data_provider.dart';

class ProjectsRepo {
  static final ProjectsRepo _instance = ProjectsRepo._();
  ProjectsRepo._();

  static ProjectsRepo get ins => _instance;

  /// --- repo functions --- ///

  Future<List<Projects>> fetchAll(int uid) => _ProjectsProvider.fetchAll(uid);

  // [REPO_METHOD]
}
