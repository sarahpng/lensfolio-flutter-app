// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_fetch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JobFetchResponse _$JobFetchResponseFromJson(Map<String, dynamic> json) =>
    _JobFetchResponse(
      jobCount: (json['job-count'] as num).toInt(),
      totalJobCount: (json['total-job-count'] as num).toInt(),
      jobs: (json['jobs'] as List<dynamic>)
          .map((e) => Job.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$JobFetchResponseToJson(_JobFetchResponse instance) =>
    <String, dynamic>{
      'job-count': instance.jobCount,
      'total-job-count': instance.totalJobCount,
      'jobs': instance.jobs,
    };
