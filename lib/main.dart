import 'package:flutter/material.dart';
import 'package:widgets1094_6i/pagina_inicial.dart';
import 'package:widgets1094_6i/Widget1.dart';
import 'package:widgets1094_6i/Widget2.dart';
import 'package:widgets1094_6i/Widget3.dart';
import 'package:widgets1094_6i/Widget4.dart';
import 'package:widgets1094_6i/Widget5.dart';
import 'package:widgets1094_6i/Widget6.dart';
import 'package:widgets1094_6i/Widget7.dart';
import 'package:widgets1094_6i/Widget8.dart';
import 'package:widgets1094_6i/Widget9.dart';
import 'package:widgets1094_6i/Widget10.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla9': (context) => const PantallaNueve(),
        '/pantalla10': (context) => const PantallaDiez(),
        '/pantalla11': (context) => const PantallaOnce(),
      },
    );
  }
}
