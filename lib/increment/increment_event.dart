import 'package:equatable/equatable.dart';

abstract class IncrementEvent extends Equatable {
  const IncrementEvent();
  @override
  List<Object?> get props => [];
}

class Increment extends IncrementEvent {
  final int counterPlus;
  const Increment({required this.counterPlus});
}

class Decrement extends IncrementEvent {
  final int counterMinus;
  const Decrement({required this.counterMinus});
}
