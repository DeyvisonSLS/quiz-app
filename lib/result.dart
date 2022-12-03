import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  const Result({
    super.key,
    required this.totalScore,
  });

  String get resultText {
    if (totalScore < 8) {
      return 'Parabéns!';
    } else if (totalScore < 12) {
      return 'Você é bom!';
    } else if (totalScore < 16) {
      return 'Impressionante!';
    } else {
      return 'Jedi level!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$resultText \n Sua pontuação final  foi de $totalScore pontos',
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 36,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
