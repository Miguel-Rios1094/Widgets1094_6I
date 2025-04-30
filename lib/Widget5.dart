//!Banner

import 'package:flutter/material.dart';

class PantallaSeis extends StatelessWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa73bff), // Fondo azul
        title: const Text(
          'Pantalla 6',
          style: TextStyle(
            color: Color(0xffffffff), // Letra blanca
            fontSize: 20.0, // Tamaño de la letra 20
          ),
        ),
        centerTitle: true, // Centrar el texto del título
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          child: ClipRect(
            child: Banner(
              message: "25% off",
              location: BannerLocation.topEnd,
              color: Colors.red,
              child: Container(
                color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.network(
                        'https://tinyurl.com/5n8ywvw3',
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Flutter Course (Beginners)',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.orangeAccent), // Aquí está el cambio
                            child: const Text('Get now'),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
