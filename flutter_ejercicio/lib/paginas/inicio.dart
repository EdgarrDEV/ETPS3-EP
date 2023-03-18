import 'package:flutter/material.dart';
import 'package:flutter_ejercicio/paginas/principal.dart';

class ejercicio extends StatelessWidget {
  const ejercicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}
