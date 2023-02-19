import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Image.network(
        //  'https://images.ctfassets.net/23aumh6u8s0i/2RrLE9Sz4VcKrh4pa3I0kn/8e1bbadef51dd4e26aa8174c2afbfd3a/flutter.png'),
        SizedBox(
          height: 10,
        ), //espacio
        Text("Formulario"), //caja de texto o label
        //imagen interna
        _imagen(), //llama container de imagen
        _nombreinput(), // llama container de Caja de texto
        SizedBox(
          height: 10,
        ),
        _passwordinput() // llama container de contraseña
      ],
    );
  }

  Container _imagen() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        child: Image.asset("assets/flutter.png"));
  }

  Container _nombreinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              hintText: 'Nombre',
              labelText: 'Nombres',
              border: InputBorder.none),
        ));
  }

  Container _passwordinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(
                Icons.password,
                color: Colors.grey,
              ),
              hintText: 'Contraseña',
              labelText: 'Contraseñas',
              border: InputBorder.none),
          obscureText: true,
        ));
  }
}
