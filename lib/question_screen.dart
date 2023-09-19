import 'dart:math';

import 'package:avd_basics/answer_button.dart';
import 'package:avd_basics/styled_text.dart';
import 'package:flutter/material.dart';
import 'package:avd_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String ans) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String ans) {
    widget.onSelectAnswer(ans);
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 201, 153, 251),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswer().map((item) {
              return AnswerButton(
                  answerString: item,
                  onTap: () {
                    answerQuestion(item);
                   });
            }),
          ],
        ),
      ),
    );
  }
}
