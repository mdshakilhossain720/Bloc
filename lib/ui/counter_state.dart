import 'package:blockpattern/bloc/counter/counter_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter/counter_enevn.dart';
import '../bloc/counter/counter_state.dart';

// Renamed the widget class to avoid name conflict
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              // Ensure the state has a counter property
              return Text(
                state.counter.toString(),
                style: const TextStyle(
                  fontSize: 60,
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(Increment());
                },
                child: const Text("Add"),
              ),
              const SizedBox(width: 12),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterBloc>().add(DeIncrement());
                },
                child: const Text("Minus"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
