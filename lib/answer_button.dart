import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answer;
  final void Function() buttonWasPressed;

  const AnswerButton(this.answer, this.buttonWasPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
      child: ElevatedButton(
        onPressed: buttonWasPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          elevation: 15,
          padding: const EdgeInsets.all(16),
        ),
        child: Text(
          answer,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
