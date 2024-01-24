import 'package:flutter/material.dart';

class ListItem {
  final Color color;
  final String text;

  ListItem(this.color, this.text);
}

class BelajarListSeparated extends StatelessWidget {
  BelajarListSeparated({super.key});

  final List<ListItem> itemlist = [
    ListItem(
      Colors.red,
      "Partai Banteng",
    ),
    ListItem(
      Colors.green,
      "Partai Kabah",
    ),
    ListItem(
      Colors.blue,
      "Partai PAN",
    ),
    ListItem(
      Colors.black38,
      "Partai Partai Islamic",
    ),
    ListItem(
      Colors.redAccent,
      "Partai PKI",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.black38,
          );
        },
        itemCount: itemlist.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            height: 100,
            width: 200,
            color: itemlist[index].color,
            child: Center(child: Text(itemlist[index].text)),
          );
        },
      ),
    );
  }
}
