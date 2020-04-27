import 'package:flutter/material.dart';

import 'package:curso_flutter/src/pages/contador_page.dart';
// import 'package:curso_flutter/src/pages/home_page.dart';

class MyApp extends StatelessWidget {

  // definir un método build a fuerza
  @override
  Widget build( context ) { // context: contiene la información del arbol de widgets
    return MaterialApp(
      debugShowCheckedModeBanner: false, // elimina el banner que nos dice que estamos en modo debug
      home: Center( // center recibe un child
        // child: HomePage(),
        child: ContadorPage(), // home está lanzando nuestro ContadorPage
      ),
    );
  }

}