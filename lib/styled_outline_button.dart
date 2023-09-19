import 'package:avd_basics/styled_button_text.dart';
import 'package:flutter/material.dart';

class StyledOutlineButton extends StatelessWidget {
  const StyledOutlineButton(this.btnText, this.startQuiz, {super.key});

  final void Function() startQuiz;

  final String btnText;

  void onStartBtnPress() {
    print("btn press");
    startQuiz();
  }

  @override
  Widget build(context) {
    return OutlinedButton.icon(
        onPressed: onStartBtnPress,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            width: 1.0,
            color: Colors.blue,
            style: BorderStyle.solid
          )
        ),
        icon: const Icon(Icons.arrow_right_alt, color: Colors.white,),
        label: const StyledButtonText("Start"));
  }
}
