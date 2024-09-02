import 'package:bloc/bloc.dart';
import 'package:blockpattern/bloc/counter/counter_enevn.dart';
import 'package:blockpattern/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{
  CounterBloc():super(CounterState()){
    on<Increment>(_increment);
    on<DeIncrement>(_decrement);
  }
  void _increment(Increment envent,Emitter<CounterState>emit){
    emit(state.copyWith(counter:state.counter+1));

  }

  void _decrement(DeIncrement envent,Emitter<CounterState>emit){
    emit(state.copyWith(counter:state.counter-1));

  }

}