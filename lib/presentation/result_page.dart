import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/router/routes/arguments/arguments.dart';
import 'package:quiz_app/app/router/routes/home_route.dart';
import 'package:quiz_app/domain/models/model.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

class ResultPage extends StatefulWidget {
  final HomeRoute homeRoute;
  final ResultArgument arguments;

  const ResultPage({
    required this.arguments,
    required this.homeRoute,
    super.key,
  });

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  Future<void> _saveResult() async {
    final appProvider = AppProvider.of(context);

    try {
      final result = Result(
        category: widget.arguments.category,
        count: widget.arguments.correctAnswers,
      );
      await appProvider.quizService.saveResult(result);

      if (mounted) {
        appProvider.snackBarDispatcher(
          S.of(context).result_was_saved_successfully,
        );
        GoRouter.of(context).go(widget.homeRoute.routePath);
      }
    } on FirebaseAuthException catch (e) {
      appProvider.snackBarDispatcher(e.message ?? '');
    } catch (e) {
      appProvider.snackBarDispatcher(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).results)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).category(widget.arguments.category),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              S
                  .of(context)
                  .count_correct_answers(widget.arguments.correctAnswers),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed:
                    () => GoRouter.of(context).go(widget.homeRoute.routePath),
                child: Text(S.of(context).go_back),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: _saveResult,
                child: Text(S.of(context).save),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
