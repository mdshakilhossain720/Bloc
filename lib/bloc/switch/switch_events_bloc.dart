import 'package:bloc/bloc.dart';
import 'package:blockpattern/bloc/switch/switch_events_event.dart';
import 'package:blockpattern/bloc/switch/switch_events_state.dart';
class SwitchBloc extends Bloc<SwitchEvents,SwitchState>{
   SwitchBloc():super(SwitchState()){
     on<EnableorDisableNotifactions>(_notifaction);
     on<SliderEvents>(_slider);

   }

   void _notifaction(EnableorDisableNotifactions events,Emitter<SwitchState>emit){
      emit(state.copyWith(isSwitch: !state.isSwitch));
   }

   void _slider(SliderEvents events,Emitter<SwitchState>emit){
      emit(state.copyWith(slider: state.slider));
   }


}



class SliderEvents extends SwitchEvents {
   final double slider;

   SliderEvents({required this.slider});

   @override
   List<Object> get props => [slider];
}


