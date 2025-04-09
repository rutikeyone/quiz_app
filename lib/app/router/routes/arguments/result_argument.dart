part of 'arguments.dart';

@freezed
abstract class ResultArgument with _$ResultArgument {
  const factory ResultArgument({
    required String correctAnswers,
    required String category,
  }) = _ResultArgument;

  factory ResultArgument.fromJson(Map<String, dynamic> json) =>
      _$ResultArgumentFromJson(json);
}
