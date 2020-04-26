import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estiloTexto =  new TextStyle(fontSize: 23); // definimos una variable de estilo para no reutilizar código y asignarlo a los Text
  final colorFondo = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
        backgroundColor: colorFondo,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Número de clicks!:', style: estiloTexto,), // aquí
            Text('0', style: estiloTexto,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('hola mundo'),
        tooltip: 'Incrementa el contador', // describe la acción que ocurrirá cuando se presione el botón
        child: Icon(Icons.directions_run), // la clase Icons tiene como propiedades estaticas los iconos
        backgroundColor: colorFondo,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}