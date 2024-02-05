import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Third Screen"),
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is the third screen"),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: Colors.amber,
                child: Text("back"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
