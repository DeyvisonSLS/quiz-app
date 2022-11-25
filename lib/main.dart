// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  QuizAppState createState() {
    return QuizAppState(); // new QuizAppState
  }
}

class QuizAppState extends State<QuizApp> {
  var questionSelected = 0;

  void answer() {
    setState(() {
      questionSelected++;
    });
    print('Answer button pressed.');
  }

  final quizQuestions = [
    'Qual é a sua cor favorita?',
    'Quantos anos você tem?'
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
            Text(quizQuestions[questionSelected]),
            ElevatedButton(
              onPressed: answer,
              child: Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: answer,
              child: Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: answer,
              child: Text('Resposta 1'),
            ),
          ],
        ),
      ),
    );
  }
}
