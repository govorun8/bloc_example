import 'dart:math';

import 'package:bloc_example/increment_event.dart';
import 'package:bloc_example/increment_state.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncrementBloc extends Bloc<IncrementEvent, IncrementState> {
  IncrementBloc() : super(const IncrementState()) {
    on<IncrementEvent>((event, emit) async {
      if (event is Increment) {
        await setNewIncrement(event, state, emit);
      } else if (event is Decrement) {
        await setNewDecrement(event, state, emit);
      }
    });
  }

  Future setNewIncrement(Increment event, IncrementState state,
      Emitter<IncrementState> emit) async {
    int incrementedCounter = event.counter + 1;

    emit(state.copyWith(
        counter: incrementedCounter,
        bgColor: Color((Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(1.0)));
  }

  Future setNewDecrement(Decrement event, IncrementState state,
      Emitter<IncrementState> emit) async {
    int decrementedCounter = event.counter - 1;

    emit(state.copyWith(
        counter: decrementedCounter,
        bgColor: Color((Random().nextDouble() * 0xFFFFFF).toInt())
            .withOpacity(1.0)));
  }
}
