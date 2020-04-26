import 'package:flutter/material.dart';

import 'package:curso_flutter/src/pages/home_page.dart';

class MyApp extends StatelessWidget {

  // definir un método build a fuerza
  @override
  Widget build( context ) { // context: contiene la información del arbol de widgets
    return MaterialApp(
      home: Center(
        child: HomePage(),
      ),
    );
  }

}