import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerString, required this.onTap});

  final String answerString;
  final Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      child: Text(answerString, textAlign: TextAlign.center),
    );
  }
}
