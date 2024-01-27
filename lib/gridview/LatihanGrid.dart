import 'package:flutter/material.dart';

class LatihanGrid extends StatelessWidget {
  LatihanGrid({super.key});

  @override
  var data = 1;
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                width: 600,
                height: 400,
                margin: EdgeInsets.all(20),
                child: GridView.count(
                  scrollDirection: Axis.horizontal,
                  crossAxisCount: 3,
                  children: List.generate(
                      26,
                      (index) => Container(
                            child: Card(
                              color: Colors.amber,
                              child: Center(
                                child:
                                    Text("${String.fromCharCode(64 + data++)}"),
                              ),
                            ),
                          )),
                ),
              ),
            ],
          ),
          GridView.count(
            crossAxisCount: 1,
            shrinkWrap: true,
            children: List.generate(
                3,
                (index) => Container(
                      height: 400,
                      color: Colors.green,
                      margin: EdgeInsets.all(20),
                      child: FlutterLogo(size: 20),
                    )),
          )
        ],
      ),
    );
  }
}
