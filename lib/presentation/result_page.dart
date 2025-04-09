import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/router/routes/arguments/arguments.dart';
import 'package:quiz_app/app/router/routes/home_route.dart';
import 'package:quiz_app/generated/l10n.dart';

class ResultPage extends StatelessWidget {
  final HomeRoute homeRoute;
  final ResultArgument arguments;

  const ResultPage({
    required this.arguments,
    required this.homeRoute,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).results)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).category(arguments.category),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              S.of(context).count_correct_answers(arguments.correctAnswers),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: () => GoRouter.of(context).go(homeRoute.routePath),
                child: Text(S.of(context).go_back),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
