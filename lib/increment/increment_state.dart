import 'package:equatable/equatable.dart';
import 'package:flutter/animation.dart';

class IncrementState extends Equatable {
  final int counter;
  final Color bgColor;
  const IncrementState({
    this.counter = 0,
    this.bgColor = const Color.fromARGB(255, 255, 255, 255),
  });
  IncrementState copyWith({
    int? counter,
    Color? bgColor,
  }) {
    return IncrementState(
      counter: counter ?? this.counter,
      bgColor: bgColor ?? this.bgColor,
    );
  }

  @override
  List<Object?> get props => [
        counter,
        bgColor,
      ];
}
