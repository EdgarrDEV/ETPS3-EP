import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.indigoAccent[400],
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.indigoAccent[200],
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.indigoAccent[100],
          ),
        ],
      ),
    );
  }
}
