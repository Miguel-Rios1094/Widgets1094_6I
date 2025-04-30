import 'package:flutter/material.dart';

class PantallaOcho extends StatefulWidget {
  const PantallaOcho({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PantallaOchoState();
  }
}

class _PantallaOchoState extends State<PantallaOcho> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffa73bff), // Fondo azul
        title: const Text(
          'Pantalla 8',
          style: TextStyle(
            color: Color(0xffffffff), // Letra blanca
            fontSize: 20.0, // Tamaño de la letra 20
          ),
        ),
        centerTitle: true, // Centrar el texto del título
      ),
      body: SizedBox(
        width: double.infinity,
        child: SizedBox(
          width: 500,
          height: double.infinity,
          child: Column(
            children: [
              OutlinedButton(
                child: const Text('Click'),
                onPressed: () => setState(() {
                  isShow = true;
                }),
              ),
              if (isShow)
                BlockSemantics(
                  blocking: isShow,
                  child: Card(
                    color: Colors.orangeAccent,
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text('This is a card'),
                          TextButton(
                            child: const Text('Close'),
                            onPressed: () => setState(
                              () {
                                isShow = false;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
