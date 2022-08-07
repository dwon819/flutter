part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

class CounterIncrement extends CounterEvent {
  const CounterIncrement();

  @override
  String toString() {
    // TODO: implement toString
    return '[+] CounterIncrement';
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class CounterDecrement extends CounterEvent {
  const CounterDecrement();

  @override
  String toString() {
    // TODO: implement toString
    return '[-] CounterDecrement';
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
