import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<CounterEvent>(_onEvent);
  }

  void _onEvent(CounterEvent event, Emitter<CounterState> emit) {
    print(event);
    if (event is CounterIncrement) {
      print('in if');
      emit(CounterState(state.count + 1));
      print(state.count);
    } else if (event is CounterDecrement) {
      emit(CounterState(state.count - 1));
    }
  }
// Stream<CounterState> mapEventToState(
//   CounterEvent event,
// ) async* {
//   if (event is CounterIncrement) {
//     yield CounterState(state.count + 1);
//   } else if (event is CounterDecrement) {
//     yield CounterState(state.count - 1);
//   }
// }
}
