import 'package:flutter/material.dart';

import 'Tasks.dart';

class TaskData extends ChangeNotifier {
  List<Tasks> tasks = [
    Tasks(name: 'buy Milk'),
    Tasks(name: 'buy eggs'),
    Tasks(name: 'buy water'),
  ];

  void addTask(String inputText) {
    final task = Tasks(name: inputText);
    tasks.add(task);
    notifyListeners();
  }

  void checkTask(Tasks task) {
    task.checkIfDone();
    notifyListeners();
  }

  void deleteTask(Tasks task) {
    tasks.remove(task);
    notifyListeners();
  }
}
