import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Integrantes: Edgar Ramón	Pineda García 25-5731-2016, Leslie Xiomara Rivas Rodas 25-1590-2016',
        style: TextStyle(fontSize: 22), //Estilo de fuente, tamaño, color
      ),
    );
  }
}
