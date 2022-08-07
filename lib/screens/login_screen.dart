import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:study_project/screens/list_screen.dart';

class LoginScreen extends StatelessWidget {
  Future setLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLogin', true);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          width: MediaQuery.of(context).size.width * 0.85,
          child: ElevatedButton(
            onPressed: () {
              setLogin().then((value) =>
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => ListScreen())
                  )
              );
            },
            child: Text('Login'),
          ),
        ),
      ),
    );
  }
}