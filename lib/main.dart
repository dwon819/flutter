import 'package:flutter/material.dart';
import 'package:study_project/screens/detail_screen.dart';
import 'package:study_project/screens/list_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book List APP',
      home: ListScreen(),
    );
  }
}
