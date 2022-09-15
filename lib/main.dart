import 'package:flutter/material.dart';

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
        body: Center(
            child: Container(
              height: 650.0,
              width: 650.0,
              color: Color.fromRGBO(0, 1, 50, 1),
              child: Image.asset(
                '../images/backgroundPattern.png',
                repeat: ImageRepeat.repeat,
                color: Color.fromRGBO(11, 29, 49, 1),
              ),
            )
        )
      )
    );
  }
}
//floatingActionButton: FloatingActionButton(
//onPressed: _incrementCounter,
// tooltip: 'Increment',
//child: const Icon(Icons.add),
//), // This trailing comma makes auto-formatting nicer for build methods.

