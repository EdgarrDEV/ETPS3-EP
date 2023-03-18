import 'package:flutter/material.dart';
import 'package:flutter_ejercicio/paginas/contenedores.dart';
import '../temas/colores.dart';
import 'contenedores.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Contenedores(),
    );
  }
}
