import 'package:flutter/material.dart';
import './question.dart';
import './answer_button.dart';

main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  _QuizAppState createState() {
    return _QuizAppState(); // new QuizAppState
  }
}

class _QuizAppState extends State<QuizApp> {
  var _questionSelected = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> quizQuestions = [
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

    List<String> answersTextList =
        quizQuestions[_questionSelected].cast()['answers'];

    List<Widget> answersButtonList =
        answersTextList.map((e) => AnswerButton(e, _answer)).toList();

    // for (var answerText in answersList) {
    //   widgets.add(AnswerButton(answerText, _answer));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bella Doceteria'),
        ),
        body: Column(
          children: [
            Question(quizQuestions[_questionSelected]['text'].toString()),
            ...answersButtonList
          ],
        ),
      ),
    );
  }

  void _answer() {
    setState(() {
      _questionSelected++;
    });
  }
}
