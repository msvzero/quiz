import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(height: 30), // new line
          const Text(
            'Learn Flutter with us!',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(height: 30), // new line
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            child: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
