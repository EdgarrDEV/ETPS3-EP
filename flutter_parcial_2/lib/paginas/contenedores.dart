import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:flutter_parcial_2/paginas/home2.dart';
import '../temas/colores.dart';
import 'home.dart';
import 'home2.dart';
import 'formulario.dart';

class Contenedores extends StatefulWidget {
  Contenedores({Key? key}) : super(key: key);

  @override
  State<Contenedores> createState() => _ContenedoresState();
}

class _ContenedoresState extends State<Contenedores> {
  int menu_activo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: spotFooter(),
      body: spotBody(),
    );
  }

  Widget spotBody() {
    return IndexedStack(index: menu_activo, children: [
      home(),
      Center(
        child: Text(
          "Datos de tarjeta",
          style: TextStyle(
              fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
        ),
      ),
      Center(),
      home2(),
      Center(
        child: Text(
          "Edgar Ramon Pineda Garcia | " + " | Leslie Xiomara Rivas Rodas",
          style: TextStyle(
              fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
        ),
      ),
    ]);
  }

  Widget spotFooter() {
    List items = [
      FeatherIcons.coffee,
      FeatherIcons.bookmark,
      FeatherIcons.plus,
      FeatherIcons.shoppingCart,
      FeatherIcons.book,
    ];

    return Container(
      height: 60,
      decoration: BoxDecoration(color: Color.fromARGB(255, 8, 8, 8)),
      child: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(5, (index) {
            return IconButton(
                onPressed: () {
                  setState(() {
                    menu_activo = index;
                  });
                },
                icon: Icon(
                  items[index],
                  color: menu_activo == index ? primario : blanco,
                ));
          }),
        ),
      ),
    );
  }
}
