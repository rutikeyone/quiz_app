import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:quiz_app/app/router/app_router.dart';
import 'package:quiz_app/domain/auth_service.dart';
import 'package:quiz_app/app/quiz_app.dart';
import 'package:quiz_app/domain/quiz_service.dart';
import 'package:uuid/uuid.dart';

import 'firebase_options.dart';

final dio = _createDio();
final _quizService = QuizServiceImpl(
  dio: dio,
  firebaseFirestore: FirebaseFirestore.instance,
  uuid: Uuid(),
);
final _authService = AuthServiceImpl(FirebaseAuth.instance);
final _router = createRouter(_authService);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final quizApp = QuizApp(authService: _authService, router: _router, quizService: _quizService);
  runApp(quizApp);
}

Dio _createDio() {
  final dio = Dio(
    BaseOptions(
      baseUrl: "https://quizapi.io/api",
      queryParameters: {"apiKey": "6l8N7O8iDVKIO5I3K3HZ9b2yDeJmMP2QtqEXXSX7"},
    ),
  );
  return dio;
}
