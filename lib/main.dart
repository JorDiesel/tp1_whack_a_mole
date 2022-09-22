import 'package:flutter/material.dart';
import 'package:tp1_whack_a_mole/background.dart';
import 'menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(0, 1, 35, 1),
        body: Background()
        )
      );
  }
}

