import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();

}

// el estado del statefulwidget
class _ContadorPageState extends State {

  final _estiloTexto =  new TextStyle(fontSize: 23);
  final _colorFondo = Colors.orange;
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
        backgroundColor: _colorFondo,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Número de taps!:', style: _estiloTexto,), // aquí
            Text( '$_conteo', style: _estiloTexto, ) // interpolación de String
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          setState(() {
            _conteo++;  
          });
        },
        tooltip: 'Incrementa el contador', // describe la acción que ocurrirá cuando se presione el botón
        child: Icon(Icons.directions_run), // la clase Icons tiene como propiedades estaticas los iconos
        backgroundColor: _colorFondo,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}