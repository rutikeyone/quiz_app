import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:quiz_app/domain/models/model.dart';
import 'package:uuid/uuid.dart';

abstract interface class QuizService {
  Future<List<Category>> fetchCategories();

  Future<List<Quiz>> fetchQuestions(String category);

  Future<void> saveResult(Result result);

  Future<List<Result>> fetchResults();
}

class QuizServiceImpl implements QuizService {
  final Dio dio;
  final FirebaseFirestore firebaseFirestore;
  final Uuid uuid;

  const QuizServiceImpl({
    required this.dio,
    required this.firebaseFirestore,
    required this.uuid,
  });

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

  @override
  Future<void> saveResult(Result result) async {
    final id = uuid.v1();
    final ref = firebaseFirestore.doc("results/$id");

    await ref.set(result.toJson());
  }

  @override
  Future<List<Result>> fetchResults() async {
    final ref = firebaseFirestore.collection("results");
    final snapshot = await ref.get();
    final value = snapshot.docs;

    final result = value.map((e) => Result.fromJson(e.data())).toList();
    return result;
  }
}
