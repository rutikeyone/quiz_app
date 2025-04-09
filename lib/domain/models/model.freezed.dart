// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Category {

 int get id; String get name;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Category(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Category implements Category {
  const _Category({required this.id, required this.name});
  factory _Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Category(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_Category(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Quiz {

 int? get id; String? get question; String? get description; Answers? get answers;@JsonKey(name: 'multiple_correct_answers') String? get multipleCorrectAnswers;@JsonKey(name: 'correct_answers') CorrectAnswers? get correctAnswers; String? get explanation; String? get category; String? get difficulty;
/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuizCopyWith<Quiz> get copyWith => _$QuizCopyWithImpl<Quiz>(this as Quiz, _$identity);

  /// Serializes this Quiz to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Quiz&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.description, description) || other.description == description)&&(identical(other.answers, answers) || other.answers == answers)&&(identical(other.multipleCorrectAnswers, multipleCorrectAnswers) || other.multipleCorrectAnswers == multipleCorrectAnswers)&&(identical(other.correctAnswers, correctAnswers) || other.correctAnswers == correctAnswers)&&(identical(other.explanation, explanation) || other.explanation == explanation)&&(identical(other.category, category) || other.category == category)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,description,answers,multipleCorrectAnswers,correctAnswers,explanation,category,difficulty);

@override
String toString() {
  return 'Quiz(id: $id, question: $question, description: $description, answers: $answers, multipleCorrectAnswers: $multipleCorrectAnswers, correctAnswers: $correctAnswers, explanation: $explanation, category: $category, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class $QuizCopyWith<$Res>  {
  factory $QuizCopyWith(Quiz value, $Res Function(Quiz) _then) = _$QuizCopyWithImpl;
@useResult
$Res call({
 int? id, String? question, String? description, Answers? answers,@JsonKey(name: 'multiple_correct_answers') String? multipleCorrectAnswers,@JsonKey(name: 'correct_answers') CorrectAnswers? correctAnswers, String? explanation, String? category, String? difficulty
});


$AnswersCopyWith<$Res>? get answers;$CorrectAnswersCopyWith<$Res>? get correctAnswers;

}
/// @nodoc
class _$QuizCopyWithImpl<$Res>
    implements $QuizCopyWith<$Res> {
  _$QuizCopyWithImpl(this._self, this._then);

  final Quiz _self;
  final $Res Function(Quiz) _then;

/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? question = freezed,Object? description = freezed,Object? answers = freezed,Object? multipleCorrectAnswers = freezed,Object? correctAnswers = freezed,Object? explanation = freezed,Object? category = freezed,Object? difficulty = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,answers: freezed == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Answers?,multipleCorrectAnswers: freezed == multipleCorrectAnswers ? _self.multipleCorrectAnswers : multipleCorrectAnswers // ignore: cast_nullable_to_non_nullable
as String?,correctAnswers: freezed == correctAnswers ? _self.correctAnswers : correctAnswers // ignore: cast_nullable_to_non_nullable
as CorrectAnswers?,explanation: freezed == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnswersCopyWith<$Res>? get answers {
    if (_self.answers == null) {
    return null;
  }

  return $AnswersCopyWith<$Res>(_self.answers!, (value) {
    return _then(_self.copyWith(answers: value));
  });
}/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CorrectAnswersCopyWith<$Res>? get correctAnswers {
    if (_self.correctAnswers == null) {
    return null;
  }

  return $CorrectAnswersCopyWith<$Res>(_self.correctAnswers!, (value) {
    return _then(_self.copyWith(correctAnswers: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Quiz extends Quiz {
   _Quiz({required this.id, required this.question, required this.description, required this.answers, @JsonKey(name: 'multiple_correct_answers') required this.multipleCorrectAnswers, @JsonKey(name: 'correct_answers') required this.correctAnswers, required this.explanation, required this.category, required this.difficulty}): super._();
  factory _Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);

@override final  int? id;
@override final  String? question;
@override final  String? description;
@override final  Answers? answers;
@override@JsonKey(name: 'multiple_correct_answers') final  String? multipleCorrectAnswers;
@override@JsonKey(name: 'correct_answers') final  CorrectAnswers? correctAnswers;
@override final  String? explanation;
@override final  String? category;
@override final  String? difficulty;

/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuizCopyWith<_Quiz> get copyWith => __$QuizCopyWithImpl<_Quiz>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuizToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Quiz&&(identical(other.id, id) || other.id == id)&&(identical(other.question, question) || other.question == question)&&(identical(other.description, description) || other.description == description)&&(identical(other.answers, answers) || other.answers == answers)&&(identical(other.multipleCorrectAnswers, multipleCorrectAnswers) || other.multipleCorrectAnswers == multipleCorrectAnswers)&&(identical(other.correctAnswers, correctAnswers) || other.correctAnswers == correctAnswers)&&(identical(other.explanation, explanation) || other.explanation == explanation)&&(identical(other.category, category) || other.category == category)&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,question,description,answers,multipleCorrectAnswers,correctAnswers,explanation,category,difficulty);

@override
String toString() {
  return 'Quiz(id: $id, question: $question, description: $description, answers: $answers, multipleCorrectAnswers: $multipleCorrectAnswers, correctAnswers: $correctAnswers, explanation: $explanation, category: $category, difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class _$QuizCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory _$QuizCopyWith(_Quiz value, $Res Function(_Quiz) _then) = __$QuizCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? question, String? description, Answers? answers,@JsonKey(name: 'multiple_correct_answers') String? multipleCorrectAnswers,@JsonKey(name: 'correct_answers') CorrectAnswers? correctAnswers, String? explanation, String? category, String? difficulty
});


@override $AnswersCopyWith<$Res>? get answers;@override $CorrectAnswersCopyWith<$Res>? get correctAnswers;

}
/// @nodoc
class __$QuizCopyWithImpl<$Res>
    implements _$QuizCopyWith<$Res> {
  __$QuizCopyWithImpl(this._self, this._then);

  final _Quiz _self;
  final $Res Function(_Quiz) _then;

/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? question = freezed,Object? description = freezed,Object? answers = freezed,Object? multipleCorrectAnswers = freezed,Object? correctAnswers = freezed,Object? explanation = freezed,Object? category = freezed,Object? difficulty = freezed,}) {
  return _then(_Quiz(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,answers: freezed == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as Answers?,multipleCorrectAnswers: freezed == multipleCorrectAnswers ? _self.multipleCorrectAnswers : multipleCorrectAnswers // ignore: cast_nullable_to_non_nullable
as String?,correctAnswers: freezed == correctAnswers ? _self.correctAnswers : correctAnswers // ignore: cast_nullable_to_non_nullable
as CorrectAnswers?,explanation: freezed == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,difficulty: freezed == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnswersCopyWith<$Res>? get answers {
    if (_self.answers == null) {
    return null;
  }

  return $AnswersCopyWith<$Res>(_self.answers!, (value) {
    return _then(_self.copyWith(answers: value));
  });
}/// Create a copy of Quiz
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CorrectAnswersCopyWith<$Res>? get correctAnswers {
    if (_self.correctAnswers == null) {
    return null;
  }

  return $CorrectAnswersCopyWith<$Res>(_self.correctAnswers!, (value) {
    return _then(_self.copyWith(correctAnswers: value));
  });
}
}


/// @nodoc
mixin _$Answers {

@JsonKey(name: 'answer_a') String? get answerA;@JsonKey(name: 'answer_b') String? get answerB;@JsonKey(name: 'answer_c') String? get answerC;@JsonKey(name: 'answer_d') String? get answerD;@JsonKey(name: 'answer_e') String? get answerE;@JsonKey(name: 'answer_f') String? get answerF;
/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswersCopyWith<Answers> get copyWith => _$AnswersCopyWithImpl<Answers>(this as Answers, _$identity);

  /// Serializes this Answers to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Answers&&(identical(other.answerA, answerA) || other.answerA == answerA)&&(identical(other.answerB, answerB) || other.answerB == answerB)&&(identical(other.answerC, answerC) || other.answerC == answerC)&&(identical(other.answerD, answerD) || other.answerD == answerD)&&(identical(other.answerE, answerE) || other.answerE == answerE)&&(identical(other.answerF, answerF) || other.answerF == answerF));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answerA,answerB,answerC,answerD,answerE,answerF);

@override
String toString() {
  return 'Answers(answerA: $answerA, answerB: $answerB, answerC: $answerC, answerD: $answerD, answerE: $answerE, answerF: $answerF)';
}


}

/// @nodoc
abstract mixin class $AnswersCopyWith<$Res>  {
  factory $AnswersCopyWith(Answers value, $Res Function(Answers) _then) = _$AnswersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'answer_a') String? answerA,@JsonKey(name: 'answer_b') String? answerB,@JsonKey(name: 'answer_c') String? answerC,@JsonKey(name: 'answer_d') String? answerD,@JsonKey(name: 'answer_e') String? answerE,@JsonKey(name: 'answer_f') String? answerF
});




}
/// @nodoc
class _$AnswersCopyWithImpl<$Res>
    implements $AnswersCopyWith<$Res> {
  _$AnswersCopyWithImpl(this._self, this._then);

  final Answers _self;
  final $Res Function(Answers) _then;

/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answerA = freezed,Object? answerB = freezed,Object? answerC = freezed,Object? answerD = freezed,Object? answerE = freezed,Object? answerF = freezed,}) {
  return _then(_self.copyWith(
answerA: freezed == answerA ? _self.answerA : answerA // ignore: cast_nullable_to_non_nullable
as String?,answerB: freezed == answerB ? _self.answerB : answerB // ignore: cast_nullable_to_non_nullable
as String?,answerC: freezed == answerC ? _self.answerC : answerC // ignore: cast_nullable_to_non_nullable
as String?,answerD: freezed == answerD ? _self.answerD : answerD // ignore: cast_nullable_to_non_nullable
as String?,answerE: freezed == answerE ? _self.answerE : answerE // ignore: cast_nullable_to_non_nullable
as String?,answerF: freezed == answerF ? _self.answerF : answerF // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Answers implements Answers {
   _Answers({@JsonKey(name: 'answer_a') required this.answerA, @JsonKey(name: 'answer_b') required this.answerB, @JsonKey(name: 'answer_c') required this.answerC, @JsonKey(name: 'answer_d') required this.answerD, @JsonKey(name: 'answer_e') this.answerE, @JsonKey(name: 'answer_f') this.answerF});
  factory _Answers.fromJson(Map<String, dynamic> json) => _$AnswersFromJson(json);

@override@JsonKey(name: 'answer_a') final  String? answerA;
@override@JsonKey(name: 'answer_b') final  String? answerB;
@override@JsonKey(name: 'answer_c') final  String? answerC;
@override@JsonKey(name: 'answer_d') final  String? answerD;
@override@JsonKey(name: 'answer_e') final  String? answerE;
@override@JsonKey(name: 'answer_f') final  String? answerF;

/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnswersCopyWith<_Answers> get copyWith => __$AnswersCopyWithImpl<_Answers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnswersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Answers&&(identical(other.answerA, answerA) || other.answerA == answerA)&&(identical(other.answerB, answerB) || other.answerB == answerB)&&(identical(other.answerC, answerC) || other.answerC == answerC)&&(identical(other.answerD, answerD) || other.answerD == answerD)&&(identical(other.answerE, answerE) || other.answerE == answerE)&&(identical(other.answerF, answerF) || other.answerF == answerF));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answerA,answerB,answerC,answerD,answerE,answerF);

@override
String toString() {
  return 'Answers(answerA: $answerA, answerB: $answerB, answerC: $answerC, answerD: $answerD, answerE: $answerE, answerF: $answerF)';
}


}

/// @nodoc
abstract mixin class _$AnswersCopyWith<$Res> implements $AnswersCopyWith<$Res> {
  factory _$AnswersCopyWith(_Answers value, $Res Function(_Answers) _then) = __$AnswersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'answer_a') String? answerA,@JsonKey(name: 'answer_b') String? answerB,@JsonKey(name: 'answer_c') String? answerC,@JsonKey(name: 'answer_d') String? answerD,@JsonKey(name: 'answer_e') String? answerE,@JsonKey(name: 'answer_f') String? answerF
});




}
/// @nodoc
class __$AnswersCopyWithImpl<$Res>
    implements _$AnswersCopyWith<$Res> {
  __$AnswersCopyWithImpl(this._self, this._then);

  final _Answers _self;
  final $Res Function(_Answers) _then;

/// Create a copy of Answers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answerA = freezed,Object? answerB = freezed,Object? answerC = freezed,Object? answerD = freezed,Object? answerE = freezed,Object? answerF = freezed,}) {
  return _then(_Answers(
answerA: freezed == answerA ? _self.answerA : answerA // ignore: cast_nullable_to_non_nullable
as String?,answerB: freezed == answerB ? _self.answerB : answerB // ignore: cast_nullable_to_non_nullable
as String?,answerC: freezed == answerC ? _self.answerC : answerC // ignore: cast_nullable_to_non_nullable
as String?,answerD: freezed == answerD ? _self.answerD : answerD // ignore: cast_nullable_to_non_nullable
as String?,answerE: freezed == answerE ? _self.answerE : answerE // ignore: cast_nullable_to_non_nullable
as String?,answerF: freezed == answerF ? _self.answerF : answerF // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CorrectAnswers {

@JsonKey(name: 'answer_a_correct') String? get answerACorrect;@JsonKey(name: 'answer_b_correct') String? get answerBCorrect;@JsonKey(name: 'answer_c_correct') String? get answerCCorrect;@JsonKey(name: 'answer_d_correct') String? get answerDCorrect;@JsonKey(name: 'answer_e_correct') String? get answerECorrect;@JsonKey(name: 'answer_f_correct') String? get answerFCorrect;
/// Create a copy of CorrectAnswers
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CorrectAnswersCopyWith<CorrectAnswers> get copyWith => _$CorrectAnswersCopyWithImpl<CorrectAnswers>(this as CorrectAnswers, _$identity);

  /// Serializes this CorrectAnswers to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CorrectAnswers&&(identical(other.answerACorrect, answerACorrect) || other.answerACorrect == answerACorrect)&&(identical(other.answerBCorrect, answerBCorrect) || other.answerBCorrect == answerBCorrect)&&(identical(other.answerCCorrect, answerCCorrect) || other.answerCCorrect == answerCCorrect)&&(identical(other.answerDCorrect, answerDCorrect) || other.answerDCorrect == answerDCorrect)&&(identical(other.answerECorrect, answerECorrect) || other.answerECorrect == answerECorrect)&&(identical(other.answerFCorrect, answerFCorrect) || other.answerFCorrect == answerFCorrect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answerACorrect,answerBCorrect,answerCCorrect,answerDCorrect,answerECorrect,answerFCorrect);

@override
String toString() {
  return 'CorrectAnswers(answerACorrect: $answerACorrect, answerBCorrect: $answerBCorrect, answerCCorrect: $answerCCorrect, answerDCorrect: $answerDCorrect, answerECorrect: $answerECorrect, answerFCorrect: $answerFCorrect)';
}


}

/// @nodoc
abstract mixin class $CorrectAnswersCopyWith<$Res>  {
  factory $CorrectAnswersCopyWith(CorrectAnswers value, $Res Function(CorrectAnswers) _then) = _$CorrectAnswersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'answer_a_correct') String? answerACorrect,@JsonKey(name: 'answer_b_correct') String? answerBCorrect,@JsonKey(name: 'answer_c_correct') String? answerCCorrect,@JsonKey(name: 'answer_d_correct') String? answerDCorrect,@JsonKey(name: 'answer_e_correct') String? answerECorrect,@JsonKey(name: 'answer_f_correct') String? answerFCorrect
});




}
/// @nodoc
class _$CorrectAnswersCopyWithImpl<$Res>
    implements $CorrectAnswersCopyWith<$Res> {
  _$CorrectAnswersCopyWithImpl(this._self, this._then);

  final CorrectAnswers _self;
  final $Res Function(CorrectAnswers) _then;

/// Create a copy of CorrectAnswers
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? answerACorrect = freezed,Object? answerBCorrect = freezed,Object? answerCCorrect = freezed,Object? answerDCorrect = freezed,Object? answerECorrect = freezed,Object? answerFCorrect = freezed,}) {
  return _then(_self.copyWith(
answerACorrect: freezed == answerACorrect ? _self.answerACorrect : answerACorrect // ignore: cast_nullable_to_non_nullable
as String?,answerBCorrect: freezed == answerBCorrect ? _self.answerBCorrect : answerBCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerCCorrect: freezed == answerCCorrect ? _self.answerCCorrect : answerCCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerDCorrect: freezed == answerDCorrect ? _self.answerDCorrect : answerDCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerECorrect: freezed == answerECorrect ? _self.answerECorrect : answerECorrect // ignore: cast_nullable_to_non_nullable
as String?,answerFCorrect: freezed == answerFCorrect ? _self.answerFCorrect : answerFCorrect // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CorrectAnswers implements CorrectAnswers {
   _CorrectAnswers({@JsonKey(name: 'answer_a_correct') required this.answerACorrect, @JsonKey(name: 'answer_b_correct') required this.answerBCorrect, @JsonKey(name: 'answer_c_correct') required this.answerCCorrect, @JsonKey(name: 'answer_d_correct') required this.answerDCorrect, @JsonKey(name: 'answer_e_correct') required this.answerECorrect, @JsonKey(name: 'answer_f_correct') required this.answerFCorrect});
  factory _CorrectAnswers.fromJson(Map<String, dynamic> json) => _$CorrectAnswersFromJson(json);

@override@JsonKey(name: 'answer_a_correct') final  String? answerACorrect;
@override@JsonKey(name: 'answer_b_correct') final  String? answerBCorrect;
@override@JsonKey(name: 'answer_c_correct') final  String? answerCCorrect;
@override@JsonKey(name: 'answer_d_correct') final  String? answerDCorrect;
@override@JsonKey(name: 'answer_e_correct') final  String? answerECorrect;
@override@JsonKey(name: 'answer_f_correct') final  String? answerFCorrect;

/// Create a copy of CorrectAnswers
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CorrectAnswersCopyWith<_CorrectAnswers> get copyWith => __$CorrectAnswersCopyWithImpl<_CorrectAnswers>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CorrectAnswersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CorrectAnswers&&(identical(other.answerACorrect, answerACorrect) || other.answerACorrect == answerACorrect)&&(identical(other.answerBCorrect, answerBCorrect) || other.answerBCorrect == answerBCorrect)&&(identical(other.answerCCorrect, answerCCorrect) || other.answerCCorrect == answerCCorrect)&&(identical(other.answerDCorrect, answerDCorrect) || other.answerDCorrect == answerDCorrect)&&(identical(other.answerECorrect, answerECorrect) || other.answerECorrect == answerECorrect)&&(identical(other.answerFCorrect, answerFCorrect) || other.answerFCorrect == answerFCorrect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,answerACorrect,answerBCorrect,answerCCorrect,answerDCorrect,answerECorrect,answerFCorrect);

@override
String toString() {
  return 'CorrectAnswers(answerACorrect: $answerACorrect, answerBCorrect: $answerBCorrect, answerCCorrect: $answerCCorrect, answerDCorrect: $answerDCorrect, answerECorrect: $answerECorrect, answerFCorrect: $answerFCorrect)';
}


}

/// @nodoc
abstract mixin class _$CorrectAnswersCopyWith<$Res> implements $CorrectAnswersCopyWith<$Res> {
  factory _$CorrectAnswersCopyWith(_CorrectAnswers value, $Res Function(_CorrectAnswers) _then) = __$CorrectAnswersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'answer_a_correct') String? answerACorrect,@JsonKey(name: 'answer_b_correct') String? answerBCorrect,@JsonKey(name: 'answer_c_correct') String? answerCCorrect,@JsonKey(name: 'answer_d_correct') String? answerDCorrect,@JsonKey(name: 'answer_e_correct') String? answerECorrect,@JsonKey(name: 'answer_f_correct') String? answerFCorrect
});




}
/// @nodoc
class __$CorrectAnswersCopyWithImpl<$Res>
    implements _$CorrectAnswersCopyWith<$Res> {
  __$CorrectAnswersCopyWithImpl(this._self, this._then);

  final _CorrectAnswers _self;
  final $Res Function(_CorrectAnswers) _then;

/// Create a copy of CorrectAnswers
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? answerACorrect = freezed,Object? answerBCorrect = freezed,Object? answerCCorrect = freezed,Object? answerDCorrect = freezed,Object? answerECorrect = freezed,Object? answerFCorrect = freezed,}) {
  return _then(_CorrectAnswers(
answerACorrect: freezed == answerACorrect ? _self.answerACorrect : answerACorrect // ignore: cast_nullable_to_non_nullable
as String?,answerBCorrect: freezed == answerBCorrect ? _self.answerBCorrect : answerBCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerCCorrect: freezed == answerCCorrect ? _self.answerCCorrect : answerCCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerDCorrect: freezed == answerDCorrect ? _self.answerDCorrect : answerDCorrect // ignore: cast_nullable_to_non_nullable
as String?,answerECorrect: freezed == answerECorrect ? _self.answerECorrect : answerECorrect // ignore: cast_nullable_to_non_nullable
as String?,answerFCorrect: freezed == answerFCorrect ? _self.answerFCorrect : answerFCorrect // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
