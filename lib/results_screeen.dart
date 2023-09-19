import 'package:avd_basics/data/questions.dart';
import 'package:avd_basics/question_summary.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key,
  required this.chosenAnswers,
  required this.onRestart
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();

    final numTotalQuestion = questions.length;
    final numCorrectQuestion = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answer $numCorrectQuestion out of $numTotalQuestion questions correctly!',
              style: const TextStyle(color: Colors.white70),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData: summaryData),
            TextButton.icon(onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white
              ),
              label: const Text('Restart Quiz!'),
              icon: const Icon(Icons.refresh),
            )
          ],
        ),
      ),
    );
  }
}
