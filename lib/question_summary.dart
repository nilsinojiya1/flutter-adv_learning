import 'package:avd_basics/summary_item.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {

  final List<Map<String, Object>> summaryData;

  const QuestionsSummary({super.key, required this.summaryData});

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(data);
          }).toList(),
        ),
      ),
    );
  }

}