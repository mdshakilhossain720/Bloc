
import 'package:blockpattern/bloc/to_do_list/event_event.dart';
import 'package:blockpattern/bloc/to_do_list/event_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToDOBloc extends Bloc<ToDoEvents,ToDoState>{
  final List<String> todolist=[];
  ToDOBloc():super (ToDoState()){
    on<AddToEvents>(_todoevents);
    on< RemoveToEvents>(_removetodoevents);
  }


  void _todoevents(AddToEvents events,Emitter<ToDoState>emit){
    todolist.add(events.task);
    emit(state.copyWith(todolist:List.from(todolist) ));


}

  void _removetodoevents( RemoveToEvents events,Emitter<ToDoState>emit){
    todolist.remove(events.task);
    emit(state.copyWith(todolist:List.from(todolist) ));


  }





}
