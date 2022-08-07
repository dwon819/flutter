import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'list_screen.dart';
import 'login_screen.dart';
class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreen createState() => _SplashScreen();

}

class _SplashScreen extends State<SplashScreen>{
  Future<bool> checkLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLogin = prefs.getBool('isLogin') ?? false;
    print('[*] is Login : ${isLogin.toString()}');
    return isLogin;
  }
  void moveScreen() async {
    await checkLogin().then((isLogin) {
      if (isLogin) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>ListScreen()));
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen()));
      }
    });
  }
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 2),() {
      moveScreen();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text('Splash Screen',style: TextStyle(fontSize: 20),),
            Text('나만의 일정 관리 : TODO 리스트 앱', style: TextStyle(fontSize: 20)),
          ],
        ),
      )
    );
  }
}