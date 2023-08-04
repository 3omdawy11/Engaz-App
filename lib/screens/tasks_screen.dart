import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/models/task_data.dart';
import '../widgets/task_list.dart';
import 'add_task_screen.dart';
import 'package:untitled/models/task.dart';

class TaskScreen extends StatelessWidget {
  static String id = 'TaskScreen';

  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int numberOfTasks = 0;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTask(),
            isScrollControlled: true,
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: kColumnPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Todoey",
                  style: kTitleTextStyle,
                ),
                Text(
                  '${Provider.of<TaskData>(context).numberOfTasks} Tasks',
                  style: kSmallWordsTextStyle,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}
