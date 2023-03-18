import 'package:flutter/material.dart';
import 'package:flutter_ejercicio/json/Detalles.dart';
import 'package:flutter_ejercicio/paginas/album.dart';
import 'package:page_transition/page_transition.dart';
import '../temas/colores.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
            "ANIMALES",
            style: TextStyle(
                fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
          ),
          Icon(Icons.list_outlined)
        ]),
      ),
    );
  }

  cuerpoSpot() {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Row(
              children: List.generate(tipos.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        menuactivo = index;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tipos[index],
                          style: TextStyle(
                              fontSize: 15,
                              color: menuactivo == index ? primario : gris,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 3),
                        menuactivo == index
                            ? Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: primario,
                                    borderRadius: BorderRadius.circular(50)))
                            : Container(),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 20),
          child: Text(
            "Felinos",
            style: TextStyle(
                fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: List.generate(Felinos.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      //cambio de wiget top
                      Navigator.push(
                          context,
                          PageTransition(
                              alignment: Alignment.bottomCenter,
                              child: AlbumPage(
                                canciones: Felinos[index],
                              ),
                              type: PageTransitionType.scale));
                      //fin cambio de widget top
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(Felinos[index]['img']),
                                  fit: BoxFit.cover),
                              color: primario,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          Felinos[index]['title'],
                          style: TextStyle(
                              color: blanco,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
        // menu 2
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 20),
          child: Text(
            "Marinos",
            style: TextStyle(
                fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: List.generate(Marinos.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      //cambio de wiget cetral
                      Navigator.push(
                          context,
                          PageTransition(
                              alignment: Alignment.bottomCenter,
                              child: AlbumPage(
                                canciones: Marinos[index],
                              ),
                              type: PageTransitionType.scale));
                      //fin cambio de widget
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(Marinos[index]['img']),
                                  fit: BoxFit.cover),
                              color: primario,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          Marinos[index]['title'],
                          style: TextStyle(
                              color: blanco,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
//fin menu centro
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 20),
          child: Text(
            "Mamiferos",
            style: TextStyle(
                fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: List.generate(Felinos.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      //cambio de wiget tercero
                      Navigator.push(
                          context,
                          PageTransition(
                              alignment: Alignment.bottomCenter,
                              child: AlbumPage(
                                canciones: Mamiferos[index],
                              ),
                              type: PageTransitionType.scale));
                      //fin cambio de widget tercero
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(Mamiferos[index]['img']),
                                  fit: BoxFit.cover),
                              color: primario,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          Felinos[index]['title'],
                          style: TextStyle(
                              color: blanco,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ]),
    );
  }
}
