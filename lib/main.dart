import 'package:flutter/material.dart';
import 'package:quiz_app/custom_widget/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.deepPurple,
                Colors.purple,
              ],
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
