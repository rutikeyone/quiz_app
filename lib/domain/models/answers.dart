part of 'model.dart';

@freezed
abstract class Answers with _$Answers {
  factory Answers({
    @JsonKey(name: 'answer_a') required String? answerA,
    @JsonKey(name: 'answer_b') required String? answerB,
    @JsonKey(name: 'answer_c') required String? answerC,
    @JsonKey(name: 'answer_d') required String? answerD,
    @JsonKey(name: 'answer_e') String? answerE,
    @JsonKey(name: 'answer_f') String? answerF,
  }) = _Answers;

  factory Answers.fromJson(Map<String, dynamic> json) =>
      _$AnswersFromJson(json);
}