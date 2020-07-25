import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_todo/Screens/TaskData.dart';

import 'TaskFile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Consumer<TaskData>(
        builder: (context, taskData, child) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Dismissible(
                background: Container(
                  color: Colors.red,
                  child: Icon(Icons.cancel),
                ),
                secondaryBackground: Container(
                  color: Colors.red,
                  child: Icon(Icons.cancel),
                ),
                key: Key(taskData.tasks[index].name),
                onDismissed: (direction) {
                  setState(() {
                    taskData.deleteTask(taskData.tasks[index]);
                  });
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.black,
                      content: Text(
                        'Task deleted successfully',
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  );
                },
                child: TaskTile(
                  taskName: taskData.tasks[index].name,
                  isChecked: taskData.tasks[index].isDone,
                  toggleCheckBox: (bool checkState) {
                    taskData.checkTask(taskData.tasks[index]);
                  },
                ),
              );
            },
            itemCount: taskData.tasks.length,
          );
        },
      ),
    );
  }
}
