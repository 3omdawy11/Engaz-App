import 'package:flutter/foundation.dart';
import 'task.dart';
class TaskData extends ChangeNotifier{
  List<Task> _taskList = [
    Task(taskTitle: 'Do your course'),
    Task(taskTitle: 'Go to the interview'),
    Task(taskTitle: 'Go to the gym'),
    Task(taskTitle: 'Play Padel'),
  ];
  void removeTask(int index){
    _taskList.removeAt(index);
    notifyListeners();
  }
  void addTask(Task task){
    _taskList.add(task);
    notifyListeners();
  }
  int get numberOfTasks {
    return _taskList.length;
  }
  void taskDone(int index){
    _taskList[index].isDone = !_taskList[index].isDone;
    notifyListeners();
  }
  String  taskName (int index){
    return _taskList[index].taskTitle;
  }
  bool taskStatus (int index){
    return _taskList[index].isDone;
  }
}