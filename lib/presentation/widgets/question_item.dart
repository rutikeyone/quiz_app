import 'package:flutter/material.dart';
import 'package:quiz_app/domain/models/model.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/widgets/answer.dart';

class QuestionItem extends StatefulWidget {
  final int index;
  final Quiz quiz;
  final void Function(bool) onAnswerQuestion;

  const QuestionItem({
    required this.index,
    required this.onAnswerQuestion,
    required this.quiz,
    super.key,
  });

  @override
  State<QuestionItem> createState() => _QuestionItemState();
}

class _QuestionItemState extends State<QuestionItem> {
  bool _isSelected = false;

  void _selectAnswer(String answer, int indexAnswer) {
    if (_isSelected) return;

    final isCorrect = widget.quiz.isCorrectAnswer(indexAnswer);
    setState(() {
      _isSelected = true;
    });

    Future.delayed(const Duration(seconds: 1), () {
      widget.onAnswerQuestion(isCorrect);
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.quiz.question;

    return Column(
      children: [
        Text(
          S
              .of(context)
              .question(widget.index, widget.quiz.filteredAnswers.length - 1),
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        if (question != null)
          Text(question, style: const TextStyle(fontSize: 20)),
        const SizedBox(height: 16),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: widget.quiz.filteredAnswers.length,
          itemBuilder: (context, index) {
            final answer = widget.quiz.filteredAnswers[index];

            return AnswerButton(
              text: answer,
              isSelected: _isSelected,
              isCorrect: widget.quiz.isCorrectAnswer(index),
              onTap: () => _selectAnswer(answer, index),
            );
          },
        ),
      ],
    );
  }
}
