import 'package:flutter/material.dart';
import 'package:untitled/models/task.dart';
import 'package:untitled/models/task_data.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (BuildContext context) {
        return TaskData();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: TaskScreen.id,
        routes: {
          TaskScreen.id : (context) => TaskScreen(),
        },
      ),
    );

  }
}

