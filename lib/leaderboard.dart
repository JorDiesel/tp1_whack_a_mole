import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tp1_whack_a_mole/GrilleJoueur.dart';
import 'package:tp1_whack_a_mole/ListAvecScroll.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const AboutPage(title: 'la page About'),
    );
  }
}

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<AboutPage> createState() => _AboutState();
}

class _AboutState extends State<AboutPage> {
  /*final scores = List.generate(
    20,
        (i) => LeaderBoard(
      '09-26-2022',
      'joueur$i',
      'score: $i',
    ),
  );*/
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Scaffold(

            body: Center(
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
              child: Container(
                width: 450,
                  height: 450,
                  child: Column(
                      children: [
                        Spacer(),
                        Text("Highscores",
                            style: Theme
                                .of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: Colors.white)),
                        Spacer(),
                        Container(
                          width: 250,
                          height: 250,
                          child: ListeAvecScroll()
                          /*child: SizedBox(
                              width: constraints.maxWidth / 2,
                              // When using the PrimaryScrollController and a Scrollbar
                              // together, only one ScrollPosition can be attached to the
                              // PrimaryScrollController at a time. Providing a
                              // unique scroll controller to this scroll view prevents it
                              // from attaching to the PrimaryScrollController.

                              child: Scrollbar(

                                thumbVisibility: true,
                                controller: _firstController,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    controller: _firstController,
                                    itemCount: 5,
                                    itemBuilder: (BuildContext context,
                                        int index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ListeAvecScroll(),
                                      );
                                    }
                                )
                            )
                          )*/
                        ),
                        Spacer(),
                        OutlinedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            //color: Color.fromRGBO(0, 147, 216, 100),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: const BorderSide(
                                          width: 5.0, color: Colors.blue)
                                  )),
                            ),
                            child: const Text(
                                "Return to menu", style: TextStyle(
                                color: Colors.white)
                            )
                        ),
                        Spacer(),
                      ]
                  )
              ),
            ),
          );
        });
  }
}/*

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

  }
}

class LeaderBoard {
  final String date;
  final String joueur;
  final String score;

  const LeaderBoard(this.date, this.joueur ,this.score);
}*/
