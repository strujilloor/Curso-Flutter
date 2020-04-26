import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final TextStyle estiloTexto =  new TextStyle(fontSize: 23);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Número de clicks!:', style: estiloTexto,),
            Text('10', style: estiloTexto,)
          ],
        ),
      ),
    );
  }
}