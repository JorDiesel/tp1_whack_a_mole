import 'package:flutter/material.dart';
import 'menu.dart';


class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 1, 50, 1),
          image: DecorationImage(
            image: AssetImage('../images/backgroundPattern.png'),
            repeat: ImageRepeat.repeat,
            opacity: 0.1
          )
        ),
        height: (MediaQuery.of(context).size.height * (7/8)),
        width: (MediaQuery.of(context).size.width * (3/4)),
        child: Menu(),
      )
    );
  }
}
