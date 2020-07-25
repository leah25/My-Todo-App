import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  final Function toggleCheckBox;

  TaskTile({
    this.isChecked,
    this.taskName,
    this.toggleCheckBox,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        taskName,
        style: TextStyle(
          color: Colors.black54,
          fontSize: 20,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.green,
        value: isChecked,
        onChanged: toggleCheckBox,
      ),
    );
  }
}
