//! Autocomplete

import 'package:flutter/material.dart';

class PantallaCuatro extends StatelessWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  static const List<String> listItems = <String>[
    'apple',
    'banana',
    'melon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Añadimos el widget Scaffold aquí
      appBar: AppBar(
        title:
            const Text('Autocompletar'), // Opcional: un título para la AppBar
      ),
      body: Autocomplete<String>(
        optionsBuilder: (TextEditingValue textEditingValue) {
          if (textEditingValue.text == '') {
            return const Iterable<String>.empty();
          }
          return listItems.where((String item) {
            return item.contains(textEditingValue.text.toLowerCase());
          });
        },
        onSelected: (String item) {
          print('Se seleccionó $item');
        },
      ),
    );
  }
}
