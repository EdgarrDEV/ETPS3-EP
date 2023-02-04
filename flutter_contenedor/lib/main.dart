import 'package:flutter/material.dart';

void main() {
  runApp(Contenedores());
}

class Contenedores extends StatelessWidget {
//Widget que no cambia en su ejecución

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.blueAccent,
    );
  }
}

class Containers extends StatefulWidget {
  //si cambia de estado en su ejecución

  const Containers({super.key});

  @override
  State<Containers> createState() => _ContainersState();
}

class _ContainersState extends State<Containers> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
