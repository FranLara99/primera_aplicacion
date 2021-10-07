import 'package:flutter/material.dart';
import 'package:primera_aplicacion/src/pages/contador_page.dart';

//import 'package:primera_aplicacion/src/pages/home_page.dart';
// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget{

  @override
  Widget build (BuildContext context){

    // ignore: prefer_const_constructors
    return MaterialApp(
      home: Center(
      //child: HomePage()
      child: ContadorPage()
      ),
      // ignore: prefer_const_constructors
    );
  }

}