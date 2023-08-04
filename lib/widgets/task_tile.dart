import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  final String taskName;
  final bool taskStatus;
  final Function(bool ?) onChange;
  final Function longPressCallback;
  const TaskTile({super.key, required this.taskName, required this.taskStatus, required this.onChange,required this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: (){
        longPressCallback();
      },
      title: Text(
        taskName,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          decoration:
              (taskStatus) ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: taskStatus,
        onChanged: onChange,
      ),
    );

  }



}

