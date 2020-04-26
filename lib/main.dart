import 'package:flutter/material.dart';

void main() {

  // primer comando, esta esperando un widget
  runApp(new MyApp());

}

class MyApp extends StatelessWidget {

  // definir un método build a fuerza
  @override
  Widget build( context ) { // context: contiene la información del arbol de widgets
    return MaterialApp(
      home: Center(
        child: Text('hola mundo'),
      ),
    );
  }

}