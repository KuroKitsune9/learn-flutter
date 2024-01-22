import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal,
          title: Text(
            "Learning basic Flutter",
            style: TextStyle(
                backgroundColor: Colors.black, color: Colors.yellow[300]),
          ),
        ),
        body: Center(
          child: Text(
            "Hello World!\n Hello, User..",
            style: TextStyle(
                color: Colors.deepPurpleAccent[700],
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
