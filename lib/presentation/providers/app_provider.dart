import 'package:flutter/cupertino.dart';
import 'package:quiz_app/domain/auth_service.dart';
import 'package:quiz_app/domain/quiz_service.dart';

class AppProvider extends InheritedWidget {
  final QuizService quizService;
  final AuthService authService;
  final void Function(String) snackBarDispatcher;

  const AppProvider({
    super.key,
    required super.child,
    required this.quizService,
    required this.authService,
    required this.snackBarDispatcher,
  });

  static AppProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppProvider>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
