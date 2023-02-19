import 'package:flutter/material.dart';
import 'package:parcial01/menu/Principal.dart';

void main() {
  runApp(const Parcial01());
}

class Parcial01 extends StatelessWidget {
  const Parcial01({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}
