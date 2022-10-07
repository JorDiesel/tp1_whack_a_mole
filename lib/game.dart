import 'package:flutter/material.dart';
import 'dart:math';

final _random = new Random();

/**
 * Generates a positive random integer uniformly distributed on the range
 * from [min], inclusive, to [max], exclusive.
 */
int next(int min, int max) => min + _random.nextInt(max - min);

class Jeu extends StatefulWidget {
  const Jeu({
    super.key,
    this.child,
  });


  final Widget? child;

  @override
  State<Jeu> createState() => _JeuState();
}

class _JeuState extends State<Jeu> {
  int score = 0;
  int bonus = 0;
  int life = 3;
  Circle circle = Circle();

  void AddScore() {
    setState(() {
      score += 10 * (1 + bonus);
    });
  }
  void AddBonus() {
    setState(() {
      bonus += 1;
    });
  }
  void RemoveBonus() {
    setState(() {
      bonus = 0;
    });
  }
  void RemoveLife() {
    setState(() {
      life -= 1;
    });
  }
  void ChangeCircle(){
    setState(() {
      circle = Circle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      child: widget.child,
    );
  }
}

class Circle {
  late int x, y, lifespan; // Declare instance variable x and y, initially null.

  Circle(){
    x = 1 + _random.nextInt(100 - 1);
    y = 1 + _random.nextInt(100 - 1);
    lifespan = 5;
  }
}

void main() {

}


