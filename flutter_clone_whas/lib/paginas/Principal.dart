import 'package:flutter/material.dart';
import 'package:flutter_clone_whas/temas/colores.dart';
import 'package:line_icons/line_icons.dart';

import 'chat.dart';
import 'estado.dart';

class Principal extends StatefulWidget {
  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int pageIndex = 0; //inicializar Index
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        Estado(),
        ChatPagina(),
        ChatPagina(),
        ChatPagina(),
        ChatPagina()
      ],
    );
  }

  Widget getFooter() {
    List iconosItems = [
      LineIcons.circle,
      LineIcons.phoneSquare,
      LineIcons.camera,
      LineIcons.comment,
      LineIcons.gem,
    ];
    List textoItems = [
      "Estado",
      "Llamadas",
      "Camara",
      "Chat",
      "Configuraciones"
    ];
    return Container(
      height: 90,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(textoItems.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = index;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      iconosItems[index],
                      color:
                          pageIndex == index ? primary : white.withOpacity(0.5),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(textoItems[index],
                        style: TextStyle(
                            fontSize: 10,
                            color: pageIndex == index
                                ? primary
                                : white.withOpacity(0.5))),
                  ],
                ),
              );
            })),
      ),
    );
  }
}
