import 'package:equatable/equatable.dart';

abstract class IncrementEvent extends Equatable {
  const IncrementEvent();
  @override
  List<Object?> get props => [];
}

class Increment extends IncrementEvent {
  final int counter;
  const Increment({required this.counter});
}

class Decrement extends IncrementEvent {
  final int counter;
  const Decrement({required this.counter});
}
