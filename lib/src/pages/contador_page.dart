//import 'dart:html';

import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _miestilo = new TextStyle(fontSize: 25);

  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi Aplicacion"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numeros de clicks: ', style: TextStyle(fontSize: 25)),
              Text('$_contador', style: _miestilo),
              //tercer hijo, mirar children linea 25
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextButton(onPressed: _sumar, child: Text("+")),
                  ),
                  Expanded(
                    child: TextButton(onPressed: _restar, child: Text("-")),
                  ),
                  Expanded(
                    child: TextButton(onPressed: _potencia, child: Text("^")),
                  ),
                ],
              ),
            ]),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
            child: Icon(Icons.add_circle_rounded), onPressed: _sumar50),
        SizedBox(height: 5.0),
        FloatingActionButton(
            child: Icon(Icons.volume_down_sharp), onPressed: _sumar100),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(width: 30),
            FloatingActionButton(
                child: Icon(Icons.exposure_zero), onPressed: _reset),
            Expanded(child: SizedBox(width: 5.0)),
            FloatingActionButton(child: Icon(Icons.remove), onPressed: _restar),
            SizedBox(width: 5.0),
            FloatingActionButton(child: Icon(Icons.add), onPressed: _sumar),
          ],
        ),
      ],
    );
  }

  void _sumar() {
    setState(() {
      _contador++;
    });
  }

  void _restar() {
    setState(() {
      _contador--;
    });
  }

  void _reset() {
    setState(() {
      _contador = 0;
    });
  }

  void _potencia() {
    setState(() {
      _contador = _contador * 2;
    });
  }

  void _sumar50() {
    setState(() {
      _contador = _contador + 50;
    });
  }

  void _sumar100() {
    setState(() {
      _contador = _contador + 100;
    });
  }
}
