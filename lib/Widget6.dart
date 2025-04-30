//! Baseline

import 'package:flutter/material.dart';

class PantallaSiete extends StatelessWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa73bff), // Fondo azul
        title: const Text(
          'Pantalla 7',
          style: TextStyle(
            color: Color(0xffffffff), // Letra blanca
            fontSize: 20.0, // Tamaño de la letra 20
          ),
        ),
        centerTitle: true, // Centrar el texto del título
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.orange,
          child: const Baseline(
            baseline: 50,
            baselineType: TextBaseline.alphabetic,
            child: FlutterLogo(size: 50),
          ),
        ),
      ),
    );
  }
}
