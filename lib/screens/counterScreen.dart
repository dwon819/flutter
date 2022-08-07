import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_project/blocs/counter/counter_bloc.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Counter: ' + state.count.toString()),
              TextButton(
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context).add(CounterIncrement());
                },
                child: Text('[+] Increment'),
              ),
              TextButton(
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context).add(CounterDecrement());
                },
                child: Text('[-] Decrement'),
              )
            ],
          ),
        );
      }),
    );
  }
}
