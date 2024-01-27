import 'package:flutter/material.dart';

class GridHeightStatis extends StatelessWidget {
  const GridHeightStatis({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          color: Colors.yellowAccent,
          height: 500.0, // Coba ganti nilai-nya menjadi statik
          child: Center(
            child: Text(
              "1",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ),
        Container(
          color: Colors.blueAccent,
          height: 500.0, // Coba ganti nilai-nya menjadi statik
          child: Center(
            child: Text(
              "2",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ),
        Container(
          color: Colors.brown,
          height: 500.0, // Coba ganti nilai-nya menjadi statik
          child: Center(
            child: Text(
              "3",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          height: 500.0, // Coba ganti nilai-nya menjadi statik
          child: Center(
            child: Text(
              "4",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ),
      ],
    );
  }
}
