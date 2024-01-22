import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      height: 800,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("")),
          color: Colors.blueAccent[100],
          borderRadius: BorderRadius.circular(20)),
      child: LayerKedua(),
    );
  }
}

class LayerKedua extends StatelessWidget {
  const LayerKedua({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 600,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.blueAccent[200],
          borderRadius: BorderRadius.circular(20)),
      child: LayerKetiga(),
    );
  }
}

class LayerKetiga extends StatelessWidget {
  const LayerKetiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.blue[700], borderRadius: BorderRadius.circular(20)),
      child: LayerFoto(),
    );
  }
}

class LayerFoto extends StatelessWidget {
  const LayerFoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 600,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpTQSkhpw9QJFf_oekar-sGJ74Kj8AxOyAlg&usqp=CAU",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
