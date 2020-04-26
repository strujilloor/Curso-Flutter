import 'package:flutter/material.dart';

import 'package:curso_flutter/src/pages/contador_page.dart';
// import 'package:curso_flutter/src/pages/home_page.dart';

class MyApp extends StatelessWidget {

  // definir un método build a fuerza
  @override
  Widget build( context ) { // context: contiene la información del arbol de widgets
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        // child: HomePage(),
        child: ContadorPage(),
      ),
    );
  }

}