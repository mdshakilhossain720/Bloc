import 'package:equatable/equatable.dart';
class ToDoState extends Equatable{
  final List<String>todolist;
  ToDoState({this.todolist = const[]});

  ToDoState copyWith({ List<String>? todolist}){
    return ToDoState(
      todolist: todolist?? this.todolist
    );
  }


  @override
  // TODO: implement props
  List<Object?> get props =>[todolist];

}
