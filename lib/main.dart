import 'package:blockpattern/bloc/counter/counter_block.dart';
import 'package:blockpattern/ui/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_)=>CounterBloc(),child: MaterialApp(
      home: CounterState(),

    ),);

  }
}


class Person extends Equatable {
  final String Name;
  final String age;

  Person({required this.Name,required this.age});

  @override
  // TODO: implement props
  List<Object?> get props =>[Name,age];

}

