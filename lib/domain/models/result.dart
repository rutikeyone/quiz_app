part of 'model.dart';

@freezed
abstract class Result with _$Result {
  const factory Result({required String count, required String category}) =
      _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
