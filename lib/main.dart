import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import './result.dart';

main() => runApp(const QuizApp());

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
  var _totalScore = 0;

  final _quizQuestions = const [
    // final List<Map<String, Object>> _quizQuestion ...
    {
      'text': 'What is your favorite color?',
      'answers': [
        {'text': 'Black', 'points': '2'},
        {'text': 'White', 'points': '5'},
        {'text': 'Yellow', 'points': '3'},
        {'text': 'Blue', 'points': '10'},
      ]
    },
    {
      'text': 'Where were you born?',
      'answers': [
        {'text': 'Santa Cruz', 'points': '7'},
        {'text': 'São Paulo', 'points': '2'},
        {'text': 'Natal', 'points': '10'},
        {'text': 'Mossoró', 'points': '2'},
      ]
    },
    {
      'text': 'What do you prefer?',
      'answers': [
        {'text': 'Car', 'points': '10'},
        {'text': 'Motorcycle', 'points': '10'},
        {'text': 'Bicycle', 'points': '7'},
        {'text': 'Bus', 'points': '0'},
      ]
    }
  ];
  // Questions Created

  bool get hasQuestions {
    return _questionSelected < _quizQuestions.length;
  }

  void _selectQuestion(int score) {
    if (hasQuestions) {
      setState(() {
        _questionSelected++;
        _totalScore += score;
      });
    }

    // print(_quizQuestions[_questionSelected]);
  }

  void _restartQuiz() {
    setState(() {
      _questionSelected = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: hasQuestions
            ? Quiz(
                questionSelected: _questionSelected,
                quizQuestions: _quizQuestions,
                buttonFunction: _selectQuestion,
              )
            : Result(
                totalScore: _totalScore,
                restartQuiz: _restartQuiz,
              ),
      ),
    );
  }
}
