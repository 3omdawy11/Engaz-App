import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/models/task.dart';
import 'package:untitled/models/task_data.dart';

class AddTask extends StatelessWidget {
  late String taskText;
  @override
  Widget build(BuildContext context) {

    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: kToDoTextStyle,
              ),
              TextField(
                onChanged: (value){
                  taskText = value;
                },
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    focusedBorder: kAddTaskUnderLineColor,
                    enabledBorder: kAddTaskUnderLineColor,
                    hintStyle: TextStyle(color: Colors.grey.shade400)),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent
                  ),
                  onPressed: () {
                    final task = Task(taskTitle: taskText);
                    Provider.of<TaskData>(context,listen: false).addTask(task);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Add Task',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// SizedBox(
// width: 250,
// child: Divider(
// color: Colors.lightBlueAccent,
// height: 80,
// thickness: 5,
// ),
// )
