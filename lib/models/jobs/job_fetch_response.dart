import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lensfolio/models/jobs/job.dart';

part 'job_fetch_response.freezed.dart';
part 'job_fetch_response.g.dart';

@freezed
sealed class JobFetchResponse with _$JobFetchResponse {
  const factory JobFetchResponse({
    @JsonKey(name: 'job-count') required int jobCount,
    @JsonKey(name: 'total-job-count') required int totalJobCount,
    required List<Job> jobs,
  }) = _JobFetchResponse;

  factory JobFetchResponse.fromJson(Map<String, Object?> json) =>
      _$JobFetchResponseFromJson(json);
}
