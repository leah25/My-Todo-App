import 'package:flutter/material.dart';

import 'TasksPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkSession().then((value) {
      if (value) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => TasksPage(),
          ),
        );
      } else {
        return null;
      }
    });
  }

  Future<bool> _checkSession() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 100.0),
              Icon(
                Icons.check_circle,
                size: 250.0,
                color: Colors.teal,
              ),
              SizedBox(height: 30.0),
              Text(
                'My TODO',
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
