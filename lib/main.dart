import 'package:belajar_flutter/gridview/LatihanGrid.dart';
import 'package:belajar_flutter/gridview/grid_basix.dart';
import 'package:belajar_flutter/gridview/grid_builder.dart';
import 'package:belajar_flutter/gridview/grid_count.dart';
import 'package:belajar_flutter/gridview/grid_fullscreen1.dart';
import 'package:belajar_flutter/gridview/grid_fullscreen2.dart';
import 'package:belajar_flutter/gridview/grid_height_statis.dart';
import 'package:belajar_flutter/listView/LatihanList.dart';
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
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          title: Text(
            "Learning basic Flutter",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
        body: LatihanGrid(),
      ),
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
