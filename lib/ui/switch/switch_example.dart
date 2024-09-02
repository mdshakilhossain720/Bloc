
import 'package:blockpattern/bloc/switch/switch_events_bloc.dart';
import 'package:blockpattern/bloc/switch/switch_events_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/switch/switch_events_event.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("switch"),),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notifactions"),
                BlocBuilder<SwitchBloc,SwitchState>(builder: (context,state){
                  return Switch(value:state.isSwitch, onChanged: (newvalue){
                    context.read<SwitchBloc>().add(EnableorDisableNotifactions());
                  });
                }),

                SizedBox(height: 10,),
                BlocBuilder<SwitchBloc,SwitchState>(builder: (context,state){
                  return  Container(
                    height: 200,
                    color: Colors.red.withOpacity(state.slider),

                  );
                }),

                SizedBox(height: 10,),
               BlocBuilder<SwitchBloc, SwitchState>(
               builder: (context, state) {
                return Slider(
              value: state.slider,  // Ensure state.slider is a double
              onChanged: (value) {
               // context.read<SwitchBloc>().add(SliderEvents(slider: value));
              },
            );
          },
        )

              ],
            )


          ],
        ),
      ),

    );
  }
}
