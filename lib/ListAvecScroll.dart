import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tp1_whack_a_mole/List.dart';

class ListeAvecScroll extends StatefulWidget {
  const ListeAvecScroll({super.key});

  @override
  State<ListeAvecScroll> createState() => _ListeAvecScroll();
}

class _ListeAvecScroll extends State<ListeAvecScroll> {
  final ScrollController _firstController = ScrollController();

  /*void highlightBlue(PointerEvent details) {
    setState(() {
      x = details.position.dx;
      y = details.position.dy;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SizedBox(
                  width: constraints.maxWidth / 2,
                  // This vertical scroll view has primary set to true, so it is
                  // using the PrimaryScrollController. On mobile platforms, the
                  // PrimaryScrollController automatically attaches to vertical
                  // ScrollViews, unlike on Desktop platforms, where the primary
                  // parameter is required.
                  child: Scrollbar(
                    thumbVisibility: true,
                    child:Liste()
                  ));
        });
  }
}
