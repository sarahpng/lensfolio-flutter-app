import 'package:dio/dio.dart';
import 'package:lensfolio/models/jobs/job.dart';
import 'package:lensfolio/services/fault/faults.dart';

part 'jobs_mocks.dart';
part 'jobs_parser.dart';
part 'jobs_data_provider.dart';

class JobsRepo {
  static final JobsRepo _instance = JobsRepo._();
  JobsRepo._();

  static JobsRepo get ins => _instance;

  /// --- repo functions --- ///

  Future<Job> fetch() => _JobsProvider.fetch();

  // [REPO_METHOD]
}