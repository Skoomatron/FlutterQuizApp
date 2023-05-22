import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.clickHandler, {super.key});

  final String answerText;
  final void Function() clickHandler;

  @override
  Widget build(context) {
    return ElevatedButton(
        onPressed: clickHandler,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 30
          ),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(45.00),
          ),
        ),
        child: Text(answerText));
  }
}