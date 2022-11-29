import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import './question.dart';
import './answer_button.dart';
import './result.dart';

main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  _QuizAppState createState() {
    return _QuizAppState(); // new QuizAppState
  }
}

class _QuizAppState extends State<QuizApp> {
  // Questions Created
  var _questionSelected = 0;

  final _quizQuestions = const [
    // final List<Map<String, Object>> _quizQuestion ...
    {
      'text': 'What is your favorite color?',
      'answers': ['Black', 'White', 'Yellow', 'Blue']
    },
    {
      'text': 'Where were you born?',
      'answers': ['Santa Cruz', 'São Paulo', 'Natal', 'Mossoró']
    },
    {
      'text': 'What do you prefer?',
      'answers': ['Car', 'Motorcycle', 'Bicycle', 'Bus']
    }
  ];
  // Questions Created

  bool get hasQuestions {
    return _questionSelected < _quizQuestions.length;
  }

  void _nextQuestion() {
    setState(() {
      if (hasQuestions) {
        _questionSelected++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bella Doceteria'),
        ),
        body: hasQuestions
            ? Quiz(
                questionSelected: _questionSelected,
                quizQuestions: _quizQuestions,
                buttonFunction: _nextQuestion,
              )
            : const Result(
                text: 'Parabéns!',
              ),
      ),
    );
  }
}
