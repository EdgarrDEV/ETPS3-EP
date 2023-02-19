import 'package:flutter/material.dart';
import 'package:parcial01/menu/Configuracion.dart';
import 'package:parcial01/menu/Login.dart';
import 'package:parcial01/menu/Registrase.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int _selectedIndex = 0;
  void _navigateBottonBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _paginas = [
    Registrarse(),
    Login(),
    Configuracion(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[_selectedIndex],
      //cabecera y cuerpo de la aplicación
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _navigateBottonBar,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Registrarse'),
            BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'Login'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Configuracion')
          ]),
    );
  }
}
