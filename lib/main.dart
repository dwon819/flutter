import 'package:flutter/material.dart';
import 'package:study_project/screens/timer_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CountApp",
      home: TimerScreen(),
    );
  }
}
