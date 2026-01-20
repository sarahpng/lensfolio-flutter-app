// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_fetch_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JobFetchResponse {

@JsonKey(name: 'job-count') int get jobCount;@JsonKey(name: 'total-job-count') int get totalJobCount; List<Job> get jobs;
/// Create a copy of JobFetchResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobFetchResponseCopyWith<JobFetchResponse> get copyWith => _$JobFetchResponseCopyWithImpl<JobFetchResponse>(this as JobFetchResponse, _$identity);

  /// Serializes this JobFetchResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobFetchResponse&&(identical(other.jobCount, jobCount) || other.jobCount == jobCount)&&(identical(other.totalJobCount, totalJobCount) || other.totalJobCount == totalJobCount)&&const DeepCollectionEquality().equals(other.jobs, jobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jobCount,totalJobCount,const DeepCollectionEquality().hash(jobs));

@override
String toString() {
  return 'JobFetchResponse(jobCount: $jobCount, totalJobCount: $totalJobCount, jobs: $jobs)';
}


}

/// @nodoc
abstract mixin class $JobFetchResponseCopyWith<$Res>  {
  factory $JobFetchResponseCopyWith(JobFetchResponse value, $Res Function(JobFetchResponse) _then) = _$JobFetchResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'job-count') int jobCount,@JsonKey(name: 'total-job-count') int totalJobCount, List<Job> jobs
});




}
/// @nodoc
class _$JobFetchResponseCopyWithImpl<$Res>
    implements $JobFetchResponseCopyWith<$Res> {
  _$JobFetchResponseCopyWithImpl(this._self, this._then);

  final JobFetchResponse _self;
  final $Res Function(JobFetchResponse) _then;

/// Create a copy of JobFetchResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jobCount = null,Object? totalJobCount = null,Object? jobs = null,}) {
  return _then(_self.copyWith(
jobCount: null == jobCount ? _self.jobCount : jobCount // ignore: cast_nullable_to_non_nullable
as int,totalJobCount: null == totalJobCount ? _self.totalJobCount : totalJobCount // ignore: cast_nullable_to_non_nullable
as int,jobs: null == jobs ? _self.jobs : jobs // ignore: cast_nullable_to_non_nullable
as List<Job>,
  ));
}

}


/// Adds pattern-matching-related methods to [JobFetchResponse].
extension JobFetchResponsePatterns on JobFetchResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JobFetchResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JobFetchResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JobFetchResponse value)  $default,){
final _that = this;
switch (_that) {
case _JobFetchResponse():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JobFetchResponse value)?  $default,){
final _that = this;
switch (_that) {
case _JobFetchResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'job-count')  int jobCount, @JsonKey(name: 'total-job-count')  int totalJobCount,  List<Job> jobs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JobFetchResponse() when $default != null:
return $default(_that.jobCount,_that.totalJobCount,_that.jobs);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'job-count')  int jobCount, @JsonKey(name: 'total-job-count')  int totalJobCount,  List<Job> jobs)  $default,) {final _that = this;
switch (_that) {
case _JobFetchResponse():
return $default(_that.jobCount,_that.totalJobCount,_that.jobs);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'job-count')  int jobCount, @JsonKey(name: 'total-job-count')  int totalJobCount,  List<Job> jobs)?  $default,) {final _that = this;
switch (_that) {
case _JobFetchResponse() when $default != null:
return $default(_that.jobCount,_that.totalJobCount,_that.jobs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JobFetchResponse implements JobFetchResponse {
  const _JobFetchResponse({@JsonKey(name: 'job-count') required this.jobCount, @JsonKey(name: 'total-job-count') required this.totalJobCount, required final  List<Job> jobs}): _jobs = jobs;
  factory _JobFetchResponse.fromJson(Map<String, dynamic> json) => _$JobFetchResponseFromJson(json);

@override@JsonKey(name: 'job-count') final  int jobCount;
@override@JsonKey(name: 'total-job-count') final  int totalJobCount;
 final  List<Job> _jobs;
@override List<Job> get jobs {
  if (_jobs is EqualUnmodifiableListView) return _jobs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_jobs);
}


/// Create a copy of JobFetchResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobFetchResponseCopyWith<_JobFetchResponse> get copyWith => __$JobFetchResponseCopyWithImpl<_JobFetchResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JobFetchResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobFetchResponse&&(identical(other.jobCount, jobCount) || other.jobCount == jobCount)&&(identical(other.totalJobCount, totalJobCount) || other.totalJobCount == totalJobCount)&&const DeepCollectionEquality().equals(other._jobs, _jobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jobCount,totalJobCount,const DeepCollectionEquality().hash(_jobs));

@override
String toString() {
  return 'JobFetchResponse(jobCount: $jobCount, totalJobCount: $totalJobCount, jobs: $jobs)';
}


}

/// @nodoc
abstract mixin class _$JobFetchResponseCopyWith<$Res> implements $JobFetchResponseCopyWith<$Res> {
  factory _$JobFetchResponseCopyWith(_JobFetchResponse value, $Res Function(_JobFetchResponse) _then) = __$JobFetchResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'job-count') int jobCount,@JsonKey(name: 'total-job-count') int totalJobCount, List<Job> jobs
});




}
/// @nodoc
class __$JobFetchResponseCopyWithImpl<$Res>
    implements _$JobFetchResponseCopyWith<$Res> {
  __$JobFetchResponseCopyWithImpl(this._self, this._then);

  final _JobFetchResponse _self;
  final $Res Function(_JobFetchResponse) _then;

/// Create a copy of JobFetchResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jobCount = null,Object? totalJobCount = null,Object? jobs = null,}) {
  return _then(_JobFetchResponse(
jobCount: null == jobCount ? _self.jobCount : jobCount // ignore: cast_nullable_to_non_nullable
as int,totalJobCount: null == totalJobCount ? _self.totalJobCount : totalJobCount // ignore: cast_nullable_to_non_nullable
as int,jobs: null == jobs ? _self._jobs : jobs // ignore: cast_nullable_to_non_nullable
as List<Job>,
  ));
}


}

// dart format on
