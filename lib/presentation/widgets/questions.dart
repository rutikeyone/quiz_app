import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:quiz_app/domain/models/model.dart';
import 'package:quiz_app/presentation/widgets/question_item.dart';

class Questions extends StatefulWidget {
  final List<Quiz> questions;
  final void Function(int) navigateToResult;

  const Questions({
    required this.questions,
    required this.navigateToResult,
    super.key,
  });

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions>
    with SingleTickerProviderStateMixin {
  List<Quiz> get questions => widget.questions;

  late final _controller = TabController(length: questions.length, vsync: this);

  int _countCorrectAnswers = 0;
  int _countIncorrectAnswers = 0;

  void _onAnswerQuestion(bool value) {
    final countAnswers = questions.length;
    final index = _controller.index;
    final newIndex = index + 1;

    if (value) {
      _countCorrectAnswers++;
    } else {
      _countIncorrectAnswers++;
    }

    if (newIndex < countAnswers) {
      _controller.animateTo(newIndex);
    } else {
      widget.navigateToResult(_countCorrectAnswers);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _controller,
        children:
            questions.mapIndexed((index, e) {
              final realIndex = index + 1;

              return QuestionItem(
                index: realIndex,
                quiz: e,
                onAnswerQuestion: _onAnswerQuestion,
              );
            }).toList(),
      ),
    );
  }
}
