import 'package:flutter/material.dart';
import 'package:flutter_application_menu/pantallas/Principal.dart';

void main() {
  runApp(const FlutterMenu());
}

class FlutterMenu extends StatelessWidget {
  const FlutterMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}
