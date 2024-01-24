import 'package:flutter/material.dart';

class BelajarRow extends StatelessWidget {
  const BelajarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("ini isi Row 1"),
        Text("ini isi Row 2"),
        Text("ini isi Row 3"),
        Row(
          children: [Text("Ini row di dalam row")],
        )
      ],
    );
  }
}
