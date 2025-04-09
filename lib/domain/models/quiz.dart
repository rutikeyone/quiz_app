part of 'model.dart';

@freezed
abstract class Quiz with _$Quiz {
  List<String?> get answerList => [
    answers?.answerA,
    answers?.answerB,
    answers?.answerC,
    answers?.answerD,
    answers?.answerE,
    answers?.answerF,
  ];

  List<String?> get correctAnswersList => [
    correctAnswers?.answerACorrect,
    correctAnswers?.answerBCorrect,
    correctAnswers?.answerCCorrect,
    correctAnswers?.answerDCorrect,
    correctAnswers?.answerECorrect,
    correctAnswers?.answerFCorrect,
  ];

  List<String> get filteredAnswers => answerList.nonNulls.toList() ?? [];

  List<String> get filteredCorrectAnswers =>
      correctAnswersList.nonNulls.toList() ?? [];

  bool isCorrectAnswer(int answerIndex) {
    final result =
        filteredCorrectAnswers.elementAtOrNull(answerIndex) == "true";
    return result;
  }

  const Quiz._();

  factory Quiz({
    required int? id,
    required String? question,
    required String? description,
    required Answers? answers,
    @JsonKey(name: 'multiple_correct_answers')
    required String? multipleCorrectAnswers,
    @JsonKey(name: 'correct_answers') required CorrectAnswers? correctAnswers,
    required String? explanation,
    required String? category,
    required String? difficulty,
  }) = _Quiz;

  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);
}
