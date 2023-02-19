import 'package:flutter/material.dart';
import 'package:flutter_formularios/paginas/Principal.dart';

void main() {
  runApp(const Inicial());
}

class Inicial extends StatelessWidget {
  const Inicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apliacion Formulario',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulario'),
        ),
        body: const Principal(),
      ),
    );
  }
}
