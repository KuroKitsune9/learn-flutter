import 'package:flutter/material.dart';

class BelajarListBuilder extends StatelessWidget {
  BelajarListBuilder({super.key});

  final List<Color> colorlist = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple
  ];

  final List<String> textlist = ["PDI", "Partai Kabah", "PAN", "Partai Janda"];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorlist.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            height: 300,
            width: 200,
            color: colorlist[index],
            child: Text(textlist[index]),
          );
        },
      ),
    );
  }
}
