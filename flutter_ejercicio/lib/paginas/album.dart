import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../temas/colores.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({Key? key, this.canciones}) : super(key: key);
  final dynamic canciones;
  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: negro, //color de fondo
      body: cuerpoAlbum(), //formar cuerpo
    );
  }

//widget es cuando retorna un valor
//metodo o accion no retorna valor
//cuerpo del album
  Widget cuerpoAlbum() {
    var size = MediaQuery.of(context).size;
    // List songAlbums = widget.canciones['songs'];
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: size.width,
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.canciones['img']),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.canciones['title'],
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: icono)),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(widget.canciones['description'],
                          style: const TextStyle(fontSize: 18, color: blanco)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              /*Column(
                  children: List.generate(songAlbums.length, (index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Container(
                          width: (size.width - 60) * 0.77,
                          child: Text(
                            // ignore: prefer_interpolation_to_compose_strings
                            /*"${index + 1}  " +*/ songAlbums[index]['title'],
                            style: const TextStyle(color: blanco, fontSize: 18),
                          ),
                        ),
                        Container(
                          width: (size.width - 60) * 0.23,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                songAlbums[index]['duration'],
                                style: TextStyle(color: gris, fontSize: 18),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: icono.withOpacity(0.5),
                                ),
                                child: Center(),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
              )
              )*/
            ],
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: blanco,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                IconButton(
                    icon: const Icon(
                      FeatherIcons.moreVertical,
                      color: blanco,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
