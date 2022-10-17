import 'package:bloc_example/increment_bloc.dart';
import 'package:bloc_example/increment_event.dart';
import 'package:bloc_example/increment_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncrementPage extends StatefulWidget {
  const IncrementPage({Key? key}) : super(key: key);
  @override
  _IncrementPageState createState() => _IncrementPageState();
}

class _IncrementPageState extends State<IncrementPage> {
  @override
  Widget build(BuildContext contex) {
    return BlocProvider(
        create: ((context) => IncrementBloc()),
        child: BlocBuilder<IncrementBloc, IncrementState>(
            builder: (context, state) {
          return Container(
            color: Colors.blueAccent,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(80.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (() {
                        context
                            .read<IncrementBloc>()
                            .add(Increment(counterPlus: state.counter));
                      }),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: state.bgColor,
                        child: const Text(
                          '+',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        state.counter.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (() {
                        context
                            .read<IncrementBloc>()
                            .add(Decrement(counterMinus: state.counter));
                      }),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: state.bgColor,
                        child: const Text(
                          '-',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
