import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              height: 250.0,
              width: 200.0,
              color: Colors.black,
              child: SvgPicture.asset('../images/backgroundPattern.svg'),
            )
        )
      )
    );
  }
}

//url(images/backgroundPattern.svg) repeat rgb(11, 29, 49);
//floatingActionButton: FloatingActionButton(
//onPressed: _incrementCounter,
// tooltip: 'Increment',
//child: const Icon(Icons.add),
//), // This trailing comma makes auto-formatting nicer for build methods.

