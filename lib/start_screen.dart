import 'package:avd_basics/styled_button_text.dart';
import 'package:avd_basics/styled_outline_button.dart';
import 'package:avd_basics/styled_text.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {

  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',
              width: 250,
              color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 30.0),
          const StyledText("Learn flutter the fun way!!!"),
          const SizedBox(height: 30),
          StyledOutlineButton("Start!!", startQuiz)
        ],
      ),
    );
  }
}