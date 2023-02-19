import 'package:flutter/material.dart';

class Registrarse extends StatefulWidget {
  const Registrarse({super.key});

  @override
  State<Registrarse> createState() => _RegistrarseState();
}

class _RegistrarseState extends State<Registrarse> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Image.network(
        //  'https://images.ctfassets.net/23aumh6u8s0i/2RrLE9Sz4VcKrh4pa3I0kn/8e1bbadef51dd4e26aa8174c2afbfd3a/flutter.png'),
        SizedBox(
          height: 3,
        ), //espacio
        Text("Formulario"), //caja de texto o label
        //imagen interna
        _imagen(), //llama container de imagen
        _nombreinput(), // llama container de Caja de texto
        SizedBox(
          height: 3,
        ),
        _apellidosinput(), // llama container de Caja de texto
        SizedBox(
          height: 3,
        ),
        _canetinput(), //carnet
        SizedBox(
          height: 3,
        ),
        _direccioninput(), //carnet
        SizedBox(
          height: 3,
        ),
        _passwordinput(), // lla,ma container de contraseña
        SizedBox(
          height: 3,
        ),
        _repasswordinput(),

        ///repeticion de contraseña
        SizedBox(
          height: 3,
        ),
      ],
    );
  }

  Container _imagen() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Image.asset("assets/registro.png"));
  }

  Container _nombreinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 10),
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

  Container _apellidosinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 10),
          decoration: InputDecoration(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              hintText: 'Apellidos',
              labelText: 'Apellidos',
              border: InputBorder.none),
        ));
  }

  Container _canetinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 10),
          decoration: InputDecoration(
              icon: Icon(
                Icons.password,
                color: Colors.grey,
              ),
              hintText: 'Carnet',
              labelText: 'Carnet',
              border: InputBorder.none),
        ));
  }

  Container _direccioninput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 10),
          decoration: InputDecoration(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              hintText: 'Direccion',
              labelText: 'Direccion',
              border: InputBorder.none),
          maxLength: 20,
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
          style: TextStyle(fontSize: 10),
          decoration: InputDecoration(
              icon: Icon(
                Icons.password,
                color: Colors.grey,
              ),
              hintText: 'Contraseña',
              labelText: 'Contraseña',
              border: InputBorder.none),
          obscureText: true,
        ));
  }

  Container _repasswordinput() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            border: Border.all(color: Colors.grey)),
        padding: EdgeInsets.symmetric(horizontal: 25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextFormField(
          style: TextStyle(fontSize: 10),
          decoration: InputDecoration(
              icon: Icon(
                Icons.password,
                color: Colors.grey,
              ),
              hintText: 'Ingresa nuevamente la contraseña',
              labelText: 'Contraseña',
              border: InputBorder.none),
          obscureText: true,
        ));
  }
}
