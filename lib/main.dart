// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

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

  final List<Map<String, Object>> quizQuestions = [
    {
      'text': 'What is your favorite color?',
      'respostas': ['Black', 'White', 'Yellow', 'Blue']
    },
    {
      'text': 'Where were you born?',
      'respostas': ['Santa Cruz', 'São Paulo', 'Natal', 'Mossoró']
    },
    {
      'text': 'What do you prefer?',
      'respostas': ['Carro', 'Moto', 'Bicicleta', 'Ônibus']
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bella Doceteria'),
        ),
        body: Column(
          children: [
            Question(quizQuestions[_questionSelected]['text'].toString()),
            AnswerButton('Resposta 1', _answer),
            AnswerButton('Resposta 1', _answer),
            AnswerButton('Resposta 1', _answer),
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
