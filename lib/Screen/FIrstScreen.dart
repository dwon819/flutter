import 'package:flutter/material.dart';
import 'package:study_project/Screen/SecondeScreen.dart';

class FirstScreen extends StatefulWidget {
  _FirstScreen createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen> {
  int count = 0;
  void increase() {
    setState(() {
      count = count + 1;
    });
  }

  void decrease() {
    setState(() {
      count = count - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Count Application'),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Count : $count',
            style: TextStyle(fontSize: 25),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    decrease();
                  },
                  child: Text('-1')),
              ElevatedButton(
                  onPressed: () {
                    increase();
                  },
                  child: Text('+1')),
            ],
          )
        ])));
  }
}
