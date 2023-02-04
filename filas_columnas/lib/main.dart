import 'package:filas_columnas/Paginas/principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RowCols());
}

class RowCols extends StatelessWidget {
  const RowCols({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Filas y Columnas',
      home: Principal(),
    );
  }
}
