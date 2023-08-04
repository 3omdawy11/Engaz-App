import 'package:flutter/material.dart';
class Task{
  late String taskTitle;
  late bool isDone;
  Task({required this.taskTitle, this.isDone = false});

  void taskDone(){
    (isDone ? isDone = false : isDone = true);
  }
}