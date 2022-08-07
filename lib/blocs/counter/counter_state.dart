part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int count;

  const CounterState(this.count);

  @override
  // TODO: implement props
  List<Object?> get props => [count];
}
