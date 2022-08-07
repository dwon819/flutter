import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_project/blocs/counter/counter_bloc.dart';
import 'package:study_project/screens/counterScreen.dart';
import 'package:study_project/screens/home_screen.dart';

Future main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter State BloC',
        routes: {
          '/': (context) => HomeScreen(),
          '/counter': (context) => CounterScreen()
        },
        initialRoute: '/',
      ),
    );
  }
}
