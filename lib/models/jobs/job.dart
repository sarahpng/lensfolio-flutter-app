import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.freezed.dart';
part 'job.g.dart';

@freezed
sealed class Job with _$Job {
  const factory Job({
    required int id,
    required String url,
    required String title,
    @JsonKey(name: 'company_name') required String comapnyName,
    @JsonKey(name: 'company_logo') required String comapnyLogo,
    required String category,
    List<String>? tags,
    @JsonKey(name: 'job_type') String? jobType,
    @JsonKey(name: 'publication_date') required DateTime publicationDate,
    @JsonKey(name: 'candidate_required_location')
    String? candidateRequiredLocation,
    String? salary,
    String? description,
  }) = _Job;

  factory Job.fromJson(Map<String, Object?> json) => _$JobFromJson(json);
}
