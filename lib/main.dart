import 'package:flutter/material.dart';
import 'package:study_project/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO List App',
      home: SplashScreen(),
    );
  }
}
