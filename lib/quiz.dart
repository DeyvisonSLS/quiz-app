import 'package:flutter/material.dart';

import './question.dart';
import './answer_button.dart';

class Quiz extends StatelessWidget {
  final int questionSelected;
  final List<Map<String, Object>> quizQuestions;
  final void Function() buttonFunction;
  // final bool hasQuestions;

  const Quiz({
    super.key,
    required this.questionSelected,
    required this.quizQuestions,
    required this.buttonFunction,
  });

  bool get hasQuestions {
    return questionSelected < quizQuestions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> answersTextList =
        hasQuestions ? quizQuestions[questionSelected].cast()['answers'] : null;
    return Column(
      children: [
        // Question text
        Question(quizQuestions[questionSelected]['text'].toString()),
        // Populate buttons list
        ...answersTextList.map((e) => AnswerButton(e, buttonFunction)).toList(),
      ],
    );
  }
}
