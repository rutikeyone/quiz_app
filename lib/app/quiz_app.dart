import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/domain/auth_service.dart';
import 'package:quiz_app/domain/quiz_service.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

class QuizApp extends StatefulWidget {
  final AuthService authService;
  final QuizService quizService;
  final GoRouter router;

  const QuizApp({
    required this.authService,
    required this.quizService,
    required this.router,
    super.key,
  });

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  GoRouter get router => widget.router;
  AuthService get authService => widget.authService;
  QuizService get quizService => widget.quizService;

  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  void _showSnackBarMessage(String message) {
    final snackBar = SnackBar(content: Text(message));
    _scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return AppProvider(
      quizService: quizService,
      authService: authService,
      snackBarDispatcher: _showSnackBarMessage,
      child: MaterialApp.router(
        scaffoldMessengerKey: _scaffoldMessengerKey,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        routerConfig: router,
      ),
    );
  }
}
