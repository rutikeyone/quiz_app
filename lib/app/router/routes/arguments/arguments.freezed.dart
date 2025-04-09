// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arguments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResultArgument {

 String get correctAnswers; String get category;
/// Create a copy of ResultArgument
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultArgumentCopyWith<ResultArgument> get copyWith => _$ResultArgumentCopyWithImpl<ResultArgument>(this as ResultArgument, _$identity);

  /// Serializes this ResultArgument to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultArgument&&(identical(other.correctAnswers, correctAnswers) || other.correctAnswers == correctAnswers)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,correctAnswers,category);

@override
String toString() {
  return 'ResultArgument(correctAnswers: $correctAnswers, category: $category)';
}


}

/// @nodoc
abstract mixin class $ResultArgumentCopyWith<$Res>  {
  factory $ResultArgumentCopyWith(ResultArgument value, $Res Function(ResultArgument) _then) = _$ResultArgumentCopyWithImpl;
@useResult
$Res call({
 String correctAnswers, String category
});




}
/// @nodoc
class _$ResultArgumentCopyWithImpl<$Res>
    implements $ResultArgumentCopyWith<$Res> {
  _$ResultArgumentCopyWithImpl(this._self, this._then);

  final ResultArgument _self;
  final $Res Function(ResultArgument) _then;

/// Create a copy of ResultArgument
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? correctAnswers = null,Object? category = null,}) {
  return _then(_self.copyWith(
correctAnswers: null == correctAnswers ? _self.correctAnswers : correctAnswers // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ResultArgument implements ResultArgument {
  const _ResultArgument({required this.correctAnswers, required this.category});
  factory _ResultArgument.fromJson(Map<String, dynamic> json) => _$ResultArgumentFromJson(json);

@override final  String correctAnswers;
@override final  String category;

/// Create a copy of ResultArgument
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResultArgumentCopyWith<_ResultArgument> get copyWith => __$ResultArgumentCopyWithImpl<_ResultArgument>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResultArgumentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResultArgument&&(identical(other.correctAnswers, correctAnswers) || other.correctAnswers == correctAnswers)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,correctAnswers,category);

@override
String toString() {
  return 'ResultArgument(correctAnswers: $correctAnswers, category: $category)';
}


}

/// @nodoc
abstract mixin class _$ResultArgumentCopyWith<$Res> implements $ResultArgumentCopyWith<$Res> {
  factory _$ResultArgumentCopyWith(_ResultArgument value, $Res Function(_ResultArgument) _then) = __$ResultArgumentCopyWithImpl;
@override @useResult
$Res call({
 String correctAnswers, String category
});




}
/// @nodoc
class __$ResultArgumentCopyWithImpl<$Res>
    implements _$ResultArgumentCopyWith<$Res> {
  __$ResultArgumentCopyWithImpl(this._self, this._then);

  final _ResultArgument _self;
  final $Res Function(_ResultArgument) _then;

/// Create a copy of ResultArgument
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? correctAnswers = null,Object? category = null,}) {
  return _then(_ResultArgument(
correctAnswers: null == correctAnswers ? _self.correctAnswers : correctAnswers // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
