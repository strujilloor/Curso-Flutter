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
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30,),
        FloatingActionButton(
          child: Icon( Icons.exposure_zero ),
          onPressed: null
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon( Icons.remove ),
          onPressed: null
        ),
        SizedBox( width: 5.0,),
        FloatingActionButton(
          child: Icon( Icons.add ),
          onPressed: null
        ),
        SizedBox(width: 30,),
      ],
    );
    
    
  }
}