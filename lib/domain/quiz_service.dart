import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:quiz_app/domain/models/model.dart';

abstract interface class QuizService {
  Future<List<Category>> fetchCategories();

  Future<List<Quiz>> fetchQuestions(String category);
}

class QuizServiceImpl implements QuizService {
  final Dio dio;

  const QuizServiceImpl({required this.dio});

  @override
  Future<List<Category>> fetchCategories() async {
    final response = await dio.get("/v1/categories");
    final data = response.data as List<dynamic>;
    final result = data.map((e) => Category.fromJson(e)).toList();
    return result;
  }

  @override
  Future<List<Quiz>> fetchQuestions(String category) async {
    final response = await dio.get(
      "/v1/questions",
      queryParameters: {'limit': 3, "category": category},
    );
    final data = response.data as List<dynamic>;
    final result = data.map((e) => Quiz.fromJson(e)).toList();
    return result;
  }
}
