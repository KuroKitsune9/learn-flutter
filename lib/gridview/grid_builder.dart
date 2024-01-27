import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BelajarGridBuilder extends StatelessWidget {
  BelajarGridBuilder({super.key});

  var data = 1;
  var color = 0;
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: 9,
      itemBuilder: (context, index) {
        return Container(
          child: Card(
            color: Colors.blue[color += 100],
            child: Center(
              child: Text(
                "${data++}",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }
}
