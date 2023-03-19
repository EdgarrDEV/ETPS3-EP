import 'package:flutter/material.dart';
import 'package:flutter_parcial_2/paginas/principal.dart';

class parcial2 extends StatelessWidget {
  const parcial2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}
