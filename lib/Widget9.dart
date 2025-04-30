import 'package:flutter/material.dart';

//! Center

class PantallaDiez extends StatefulWidget {
  const PantallaDiez({Key? key}) : super(key: key);

  @override
  State<PantallaDiez> createState() => _PantallaDiezState();
}

class _PantallaDiezState extends State<PantallaDiez> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa73bff), // Fondo azul
        title: const Text(
          'Pantalla 10',
          style: TextStyle(
            color: Color(0xffffffff), // Letra blanca
            fontSize: 20.0, // Tamaño de la letra 20
          ),
        ),
        centerTitle: true, // Centrar el texto del título
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Modal Bottom Sheet'),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 400,
                  child: Center(
                    child: ElevatedButton(
                      child: const Text('Close'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
