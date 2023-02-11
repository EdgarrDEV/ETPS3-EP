import 'package:flutter/material.dart';

class MiFigura extends StatelessWidget {
  // const MiFigura({super.key});

  final child;
  MiFigura({required this.child});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0), //primer hijo
          child: Container(
              height: 700,
              color: Colors.amberAccent[200],
              child: Image.network(
                  "https://png.pngtree.com/thumb_back/fh260/background/20200731/pngtree-blue-carbon-background-with-sport-style-and-golden-light-image_371487.jpg")), //Nieto
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0), //primer hijo
          child: Container(
            height: 700,
            color: Colors.cyanAccent[200],
            child: Center(
                child: Text(
              child,
              style: TextStyle(fontSize: (40)),
            )),
          ), //Nieto
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0), //primer hijo
          child: Container(
            height: 700,
            color: Colors.blueAccent[200],
            child: Center(
                child: Text(
              child,
              style: TextStyle(fontSize: (40)),
            )),
          ), //Nieto
        ),
      ],
    );
  }
}
