import 'dart:html';

import 'package:flutter/material.dart';


class ScoreValidator extends StatelessWidget {
  const ScoreValidator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Row(
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Column(
                      children: [
                        Image.asset('../images/backIcon.png', width: 75, height: 75,),
                        const Text(
                          'BACK',
                          style: TextStyle(
                              color: Colors.lightBlue,
                              decoration: TextDecoration.underline,
                              fontSize: 25.0
                          ),
                        ),
                      ],
                    )
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    '../images/validate.png',
                    width: 125,
                    height: 125,
                  ),
                  const Text(
                    'SCORE VALIDATOR',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 32.0
                    )
                  ),
                  Row(
                    children: [
                      const Text(
                          'DATE:',
                        style: TextStyle(
                          color: Colors.white,
                            fontSize: 20.0
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'NAME:',
                        style: TextStyle(
                          color: Colors.white,
                            fontSize: 20.0
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'SCORE:',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.height * (1/3) , 75)),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed))
                              return Colors.lightBlue;
                            return null;
                          }
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(color: Colors.lightBlue, width: 2)
                          )
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'VALIDATE SCORE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        fontSize: 20.0
                      ),
                    ),
                  ),
                  const Text(
                    'Score exist :',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
    );
  }
}