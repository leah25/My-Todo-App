import 'package:flutter/material.dart';
import 'package:my_todo/Screens/TaskData.dart';
import 'package:provider/provider.dart';

class BottomContainer extends StatelessWidget {
  String inputText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade700,
      child: Container(
        padding: EdgeInsets.only(left: 30.0, right: 30.0),
        height: 280,
        decoration: BoxDecoration(
          color: Colors.teal.shade50,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Add Task',
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                inputText = value;
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(inputText);
                Navigator.pop(context);
              },
              color: Colors.teal,
              child: Text(
                "Add",
                style: TextStyle(color: Colors.teal.shade100, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
