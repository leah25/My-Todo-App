import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_todo/Screens/TaskData.dart';

import 'BottomContainer.dart';
import 'TaskList.dart';

class TasksPage extends StatefulWidget {
  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  Widget buildBottomContainer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(
            Icons.add,
            color: Colors.teal.shade100,
            size: 30,
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: BottomContainer(),
                ),
              ),
            );
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.teal,
                    ),
                    radius: 30.0,
                    backgroundColor: Colors.teal.shade100),
                SizedBox(height: 10.0),
                Text(
                  'My TODO ',
                  style: TextStyle(
                      color: Colors.teal.shade100,
                      fontSize: 60,
                      fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, top: 2.0),
                  child: Text(
                    'You\'ve got: ${Provider.of<TaskData>(context).tasks.length} Tasks,Today',
                    style: TextStyle(
                      color: Colors.teal.shade100,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                color: Colors.teal.shade100,
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
