import 'package:flutter/material.dart';
import 'package:flutter_list_builder/figuras/square.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    final List _post = ['pantalla1', 'pantalla2', 'pantalla3', 'pantalla4'];
    return Scaffold(
      body: Column(
        children: [
//history of instagram
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ],
            ),
          ),
//instagram post

          Expanded(
            child: ListView.builder(
                itemCount: _post.length,
                itemBuilder: (context, index) {
                  return MiFigura(
                    child: _post[index],
                  );
                }),
          ),
        ],
      ),
      /*/se combierte en bulder ListView(
        //Padre
        //physics: NeverScrollableScrollPhysics(), // por si no quiero scroll

        children: [
          // hijo
          /*   Padding(
            padding: EdgeInsets.all(8.0), //primer hijo
            child: Container(
              height: 200,
              color: Colors.amberAccent[200],
            ), //Nieto
          ),
          Padding(
            padding: EdgeInsets.all(8.0), //segundo hijo
            child: Container(
              height: 200,
              color: Colors.blueGrey[200],
            ), //Nieto
          ),
          Padding(
            padding: EdgeInsets.all(8.0), //tercer hijo
            child: Container(
              height: 200,
              color: Colors.blueAccent[200],
            ), //Nieto
          ),
          Padding(
            padding: EdgeInsets.all(8.0), //tercer hijo
            child: Container(
              height: 200,
              color: Colors.cyanAccent[200],
            ), //Nieto
          )*/

          MiFigura(),
          MiFigura(),
          MiFigura(),
          MiFigura(),
        ],
      ),*/
    );
  }
}
