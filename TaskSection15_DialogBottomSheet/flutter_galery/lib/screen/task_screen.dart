import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_galery/model/task_manager.dart';
import 'package:flutter_galery/screen/empty_task_screen.dart';
import 'package:flutter_galery/screen/task_item_screen.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Management'),
        centerTitle: true,
      ),
      body: buildTaskScreen(),
      floatingActionButton: buildNavigationButton(),
    );
  }
}

Widget buildTaskScreen(){
  return Consumer <TaskManager> (
    builder: (context, manager, child){
      if(manager.taskModels.isNotEmpty){
        return Container();
      } else{
        return const EmptyTaskScreen();
      }
    },
  );
}

Widget buildNavigationButton() => FloatingActionButton(
  child: const Icon(Icons.add),
  onPressed: (){
    final manager = Provider.of <TaskManager>(context, listen: false);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TaskItemScreen(
          onCreate: (task){
            manager.addTask(task);
            Navigator.pop(context);
          },
        ),
      ),
    );
  },
);

// Widget FloatingActionButton() => FloatingActionButton(
//     child: const Icon(Icons.add),
//     onPressed: (){
//       final manager = Provider.of(context, listen: false);
//       Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => TaskItemScreen(
//           onCreate: (task){
//             manager.addTask(task);
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       ),
//     },
// )