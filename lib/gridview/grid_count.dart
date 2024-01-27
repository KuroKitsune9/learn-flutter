import 'package:flutter/material.dart';

class GridCount extends StatelessWidget {
  @override
  var data = 1;
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      scrollDirection: Axis.horizontal,
      children: List.generate(
          26,
          (index) => Container(
                child: Card(
                  color: Colors.amber,
                  child: Center(
                      child: Text("${String.fromCharCode(64 + data++)}")),
                ),
              )),
    );
  }
}
