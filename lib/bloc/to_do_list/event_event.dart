import 'package:equatable/equatable.dart';
abstract class ToDoEvents extends Equatable{
  ToDoEvents();

}
class AddToEvents extends ToDoEvents{
  final String task;
  AddToEvents({required this.task});
  List<Object?> get props=>[task];

}

class RemoveToEvents extends ToDoEvents{

  final Object task;
  RemoveToEvents({required this.task});

  List<Object?> get props=>[];

}
