import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:study_project/screens/splash_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO List App',
      home: SplashScreen(),
    );
  }
}
