import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp')
      ),
      body: ListView(
        // children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

  // Crea una lista de ListTile de manera tradicional
  List<Widget> _crearItems() {

    List<Widget> lista = new List<Widget>();

    for (var opt in opciones) {
      final tempWidget = ListTile(
        title: Text( opt ),
      );

      lista..add( tempWidget ) // operador de cascada: .. referencia a la lista y llama al método add
           ..add( Divider() );
    }
    return lista;
  }

  // Crea una lista de ListTile utilizando map y con menos código
  List<Widget> _crearItemsCorta(){

    return opciones.map( ( item ) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text( item + '!' ),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.camera_alt), // izquierda
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){ }, // derecha
          ),
          Divider()
        ],
      );
    }).toList();
  }
}