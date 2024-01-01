import 'package:flutter/material.dart';
import 'package:quiz_app/custom_widget/start_screen.dart';

void main() {
  runApp(const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: Scaffold(
        body: Center(
          child: StartScreen(),
        ),
      )));
}
