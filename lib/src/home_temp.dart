import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  final opciones = [
    'titulo 1',
    'titulo 2',
    'titulo 3',
    'titulo 4',
    'titulo 5',
    'titulo 6',
    'titulo 7',
    'titulo 8',
    'titulo 9',
    'titulo 10',
    'titulo 11',
    'titulo 12',
    'titulo 13',
    'titulo 14',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(children: _crearItemsReducida()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[];
    for (String opcion in opciones) {
      final tempWidget = ListTile(
        title: Text(opcion),
      );
      lista.add(tempWidget);
      lista.add(Divider(
        height: 50,
      ));
    }
    return lista;
  }

  List<Widget> _crearItemsReducida() {
    var widgets = opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(
            height: 50,
          )
        ],
      );
    }).toList();

    return widgets;
  }
}
