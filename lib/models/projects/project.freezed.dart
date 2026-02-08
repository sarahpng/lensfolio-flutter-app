// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Projects {

 int get id; String get uid; String get title; String get description;@JsonKey(defaultValue: []) List<String> get technologies;@JsonKey(name: 'image_url') String? get imageUrl;@JsonKey(name: 'github_url') String? get githubUrl;@JsonKey(name: 'live_url') String? get liveUrl;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of Projects
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectsCopyWith<Projects> get copyWith => _$ProjectsCopyWithImpl<Projects>(this as Projects, _$identity);

  /// Serializes this Projects to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Projects&&(identical(other.id, id) || other.id == id)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.technologies, technologies)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.githubUrl, githubUrl) || other.githubUrl == githubUrl)&&(identical(other.liveUrl, liveUrl) || other.liveUrl == liveUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uid,title,description,const DeepCollectionEquality().hash(technologies),imageUrl,githubUrl,liveUrl,createdAt);

@override
String toString() {
  return 'Projects(id: $id, uid: $uid, title: $title, description: $description, technologies: $technologies, imageUrl: $imageUrl, githubUrl: $githubUrl, liveUrl: $liveUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ProjectsCopyWith<$Res>  {
  factory $ProjectsCopyWith(Projects value, $Res Function(Projects) _then) = _$ProjectsCopyWithImpl;
@useResult
$Res call({
 int id, String uid, String title, String description,@JsonKey(defaultValue: []) List<String> technologies,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'github_url') String? githubUrl,@JsonKey(name: 'live_url') String? liveUrl,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$ProjectsCopyWithImpl<$Res>
    implements $ProjectsCopyWith<$Res> {
  _$ProjectsCopyWithImpl(this._self, this._then);

  final Projects _self;
  final $Res Function(Projects) _then;

/// Create a copy of Projects
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? uid = null,Object? title = null,Object? description = null,Object? technologies = null,Object? imageUrl = freezed,Object? githubUrl = freezed,Object? liveUrl = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,technologies: null == technologies ? _self.technologies : technologies // ignore: cast_nullable_to_non_nullable
as List<String>,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,githubUrl: freezed == githubUrl ? _self.githubUrl : githubUrl // ignore: cast_nullable_to_non_nullable
as String?,liveUrl: freezed == liveUrl ? _self.liveUrl : liveUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Projects].
extension ProjectsPatterns on Projects {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Projects value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Projects() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Projects value)  $default,){
final _that = this;
switch (_that) {
case _Projects():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Projects value)?  $default,){
final _that = this;
switch (_that) {
case _Projects() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String uid,  String title,  String description, @JsonKey(defaultValue: [])  List<String> technologies, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'github_url')  String? githubUrl, @JsonKey(name: 'live_url')  String? liveUrl, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Projects() when $default != null:
return $default(_that.id,_that.uid,_that.title,_that.description,_that.technologies,_that.imageUrl,_that.githubUrl,_that.liveUrl,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String uid,  String title,  String description, @JsonKey(defaultValue: [])  List<String> technologies, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'github_url')  String? githubUrl, @JsonKey(name: 'live_url')  String? liveUrl, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _Projects():
return $default(_that.id,_that.uid,_that.title,_that.description,_that.technologies,_that.imageUrl,_that.githubUrl,_that.liveUrl,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String uid,  String title,  String description, @JsonKey(defaultValue: [])  List<String> technologies, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'github_url')  String? githubUrl, @JsonKey(name: 'live_url')  String? liveUrl, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Projects() when $default != null:
return $default(_that.id,_that.uid,_that.title,_that.description,_that.technologies,_that.imageUrl,_that.githubUrl,_that.liveUrl,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Projects implements Projects {
  const _Projects({required this.id, required this.uid, required this.title, required this.description, @JsonKey(defaultValue: []) required final  List<String> technologies, @JsonKey(name: 'image_url') this.imageUrl, @JsonKey(name: 'github_url') this.githubUrl, @JsonKey(name: 'live_url') this.liveUrl, @JsonKey(name: 'created_at') required this.createdAt}): _technologies = technologies;
  factory _Projects.fromJson(Map<String, dynamic> json) => _$ProjectsFromJson(json);

@override final  int id;
@override final  String uid;
@override final  String title;
@override final  String description;
 final  List<String> _technologies;
@override@JsonKey(defaultValue: []) List<String> get technologies {
  if (_technologies is EqualUnmodifiableListView) return _technologies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_technologies);
}

@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override@JsonKey(name: 'github_url') final  String? githubUrl;
@override@JsonKey(name: 'live_url') final  String? liveUrl;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of Projects
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectsCopyWith<_Projects> get copyWith => __$ProjectsCopyWithImpl<_Projects>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProjectsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Projects&&(identical(other.id, id) || other.id == id)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._technologies, _technologies)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.githubUrl, githubUrl) || other.githubUrl == githubUrl)&&(identical(other.liveUrl, liveUrl) || other.liveUrl == liveUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,uid,title,description,const DeepCollectionEquality().hash(_technologies),imageUrl,githubUrl,liveUrl,createdAt);

@override
String toString() {
  return 'Projects(id: $id, uid: $uid, title: $title, description: $description, technologies: $technologies, imageUrl: $imageUrl, githubUrl: $githubUrl, liveUrl: $liveUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ProjectsCopyWith<$Res> implements $ProjectsCopyWith<$Res> {
  factory _$ProjectsCopyWith(_Projects value, $Res Function(_Projects) _then) = __$ProjectsCopyWithImpl;
@override @useResult
$Res call({
 int id, String uid, String title, String description,@JsonKey(defaultValue: []) List<String> technologies,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'github_url') String? githubUrl,@JsonKey(name: 'live_url') String? liveUrl,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$ProjectsCopyWithImpl<$Res>
    implements _$ProjectsCopyWith<$Res> {
  __$ProjectsCopyWithImpl(this._self, this._then);

  final _Projects _self;
  final $Res Function(_Projects) _then;

/// Create a copy of Projects
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? uid = null,Object? title = null,Object? description = null,Object? technologies = null,Object? imageUrl = freezed,Object? githubUrl = freezed,Object? liveUrl = freezed,Object? createdAt = null,}) {
  return _then(_Projects(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,technologies: null == technologies ? _self._technologies : technologies // ignore: cast_nullable_to_non_nullable
as List<String>,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,githubUrl: freezed == githubUrl ? _self.githubUrl : githubUrl // ignore: cast_nullable_to_non_nullable
as String?,liveUrl: freezed == liveUrl ? _self.liveUrl : liveUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
