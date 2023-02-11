import 'package:flutter/material.dart';

class MiFigura extends StatelessWidget {
  // const MiFigura({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0), //primer hijo
      child: Container(
        height: 700,
        color: Colors.amberAccent[200],
      ), //Nieto
    );
  }
}
