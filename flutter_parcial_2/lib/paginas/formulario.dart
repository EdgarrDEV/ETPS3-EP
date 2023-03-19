import 'package:flutter/material.dart';
import 'package:flutter_parcial_2/paginas/album.dart';
import 'package:page_transition/page_transition.dart';
import '../json/detalles.dart';
import '../temas/colores.dart';

class formulario extends StatefulWidget {
  const formulario({super.key});

  @override
  State<formulario> createState() => _formularioState();
}

class _formularioState extends State<formulario> {
  @override
  int menuactivo = 0;
  int menuactivo2 = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: negro,
      appBar: barraSpotApp(),
      body: cuerpoSpot(),
    );
  }

  barraSpotApp() {
    return AppBar(
      backgroundColor: negro,
      elevation: 10,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "EMPRESAS SA DE CV",
            style: TextStyle(
                fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
          ),
          Icon(Icons.list_outlined)
        ]),
      ),
    );
  }

  cuerpoSpot() {
//empieza
    return Column(
      children: [
        //Image.network(
        //  'https://images.ctfassets.net/23aumh6u8s0i/2RrLE9Sz4VcKrh4pa3I0kn/8e1bbadef51dd4e26aa8174c2afbfd3a/flutter.png'),
        SizedBox(
          height: 3,
        ), //espacio
        Text("Formulario parcial"), //caja de texto o label
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
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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

  Container _apellidosinput() {
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
          style: TextStyle(fontSize: 20),
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
          style: TextStyle(fontSize: 20),
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
          style: TextStyle(fontSize: 20),
          decoration: InputDecoration(
              icon: Icon(
                Icons.password,
                color: Colors.grey,
              ),
              hintText: 'Ingresa nuevamente la contraseña',
              labelText: 'Confirmar Contraseña',
              border: InputBorder.none),
          obscureText: true,
        ));
  }

//termina
}
