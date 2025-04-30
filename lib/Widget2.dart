//! AspectRatio

import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa73bff), // Fondo azul
        title: const Text(
          'Pantalla 2',
          style: TextStyle(
            color: Color(0xffffffff), // Letra blanca
            fontSize: 20.0, // Tamaño de la letra 20
          ),
        ),
        centerTitle: true, // Centrar el texto del título
      ),
      body: Container(
        color: Colors.orangeAccent,
        alignment: Alignment.center,
        width: double.infinity,
        height: 300,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}
