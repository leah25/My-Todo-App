import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/Splash.dart';
import 'Screens/TaskData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return TaskData();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.teal,
          cursorColor: Colors.teal,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
