import 'package:flutter/material.dart';

class HomePage extends StatefulWidget
{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final miestilo = new TextStyle(fontSize: 25);

  final contador = 0;

@override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numeros de clicks: ', style: TextStyle( fontSize: 25)),
            Text( '$contador', style: miestilo),
          ]
        ),
      ),
    );
  }



}