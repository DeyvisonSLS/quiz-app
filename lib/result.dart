import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String text;

  const Result({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 36,
        ),
      ),
    );
  }
}
