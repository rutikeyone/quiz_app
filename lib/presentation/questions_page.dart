import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/app/router/routes/questions_route.dart';
import 'package:quiz_app/domain/models/model.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';
import 'package:quiz_app/presentation/widgets/questions.dart';

class QuestionsPage extends StatefulWidget {
  final QuestionsRoute questionRoute;
  final String category;

  const QuestionsPage({
    required this.category,
    required this.questionRoute,
    super.key,
  });

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  List<Quiz> _questions = [];
  bool _isLoading = true;

  Future<void> _fetchQuestions() async {
    final appProvider = AppProvider.of(context);
    try {
      _updateLoadingState(true);
      final questions = await appProvider.quizService.fetchQuestions(
        widget.category,
      );

      setState(() {
        _questions = questions;
        _isLoading = false;
      });
    } catch (e) {
      appProvider.snackBarDispatcher(e.toString());
    }
  }

  void _updateLoadingState(bool value) {
    setState(() {
      _isLoading = value;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _fetchQuestions();
  }

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(widget.category)),
      body:
          _isLoading
              ? Center(child: CircularProgressIndicator())
              : Questions(
                questions: _questions,
                navigateToResult:
                    (result) => widget.questionRoute.result.push(
                      router,
                      category: widget.category,
                      countCorrectAnswers: result.toString(),
                    ),
              ),
    );
  }
}
