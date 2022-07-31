import 'package:flutter/material.dart';
import 'package:study_project/Screen/SecondeScreen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('This is First Screen'),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return SecondScreen(
                    screenData: 'Data from FirstScreen',
                  );
                }));
              },
              child: Text('Go to Second Screen'))
        ])));
  }
}
