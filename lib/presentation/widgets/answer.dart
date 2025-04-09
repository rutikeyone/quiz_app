import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final bool isCorrect;
  final VoidCallback onTap;

  const AnswerButton({
    required this.text,
    required this.isSelected,
    required this.isCorrect,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor:
              isSelected
                  ? (isCorrect ? Colors.green : Colors.red)
                  : Colors.grey[200],
          minimumSize: const Size(double.infinity, 50),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(color: isSelected ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
