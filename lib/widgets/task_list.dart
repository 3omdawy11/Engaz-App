import 'package:flutter/material.dart';
import 'package:untitled/models/task_data.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:untitled/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemCount: taskData.numberOfTasks,
          itemBuilder: (
            BuildContext context,
            int index,
          ) {
            return TaskTile(
                
                taskName: taskData.taskName(index),
                taskStatus: taskData.taskStatus(index),
                onChange: (bool? checkBoxState) {
                  taskData.taskDone(index);
                }, longPressCallback: (){
                  taskData.removeTask(index);
            },
            );
          },
        );
      },
    );
  }
}
