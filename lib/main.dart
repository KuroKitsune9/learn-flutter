import 'package:belajar_flutter/screens/menu_screen.dart';
import 'package:belajar_flutter/screens/second_screen.dart';
import 'package:belajar_flutter/screens/third_screen.dart';
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
      title: "This is my first flutter Project",
      // home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => NavigaitonMenu(),
        'second': (context) => SecondScreen(),
        'third': (context) => ThirdScreen()
      },
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello World!\n Hello, User..",
        style: TextStyle(
            color: Colors.blue[800], fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
