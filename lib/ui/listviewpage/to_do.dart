import 'package:blockpattern/bloc/to_do_list/event_bloc.dart';
import 'package:blockpattern/bloc/to_do_list/event_bloc.dart';
import 'package:blockpattern/bloc/to_do_list/event_event.dart';
import 'package:blockpattern/bloc/to_do_list/event_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToDOList extends StatelessWidget {
  const ToDOList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          for(int i=0;i<10;i++){
            context.read()<ToDOBloc>().add(AddToEvents(task: 'task'+i.toString()));


          }

        }, child: Icon(Icons.add),),

      appBar: AppBar(title: Text("Todo lIst"),),

      body: BlocBuilder<ToDOBloc,ToDoState>(
        builder: (context, state) {
          if(state.todolist.isEmpty){
            return Center(child: Text("No Data"),);
          }
          else if(state.todolist.isNotEmpty){
            return ListView.builder(
              shrinkWrap: true,
              itemCount: state.todolist.length,
                itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.todolist[index].toString()),
                trailing: IconButton(onPressed: () {
                  context.read()<ToDOBloc>().add(RemoveToEvents(task:state.todolist[index]));
                }, icon: Icon(Icons.delete)),


              );
            });

          }else{
            return SizedBox();
          }

        },
      ),

    );
  }
}
