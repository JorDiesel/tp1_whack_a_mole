import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
          child: Container(
            padding: const EdgeInsets.all(80),
            decoration: const BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0,0),
            colors: <Color>[
            Color.fromRGBO(0, 147, 216, 100),
            Color.fromRGBO(0, 70, 143, 100),
            ], //
            tileMode: TileMode.mirror,
            ),
            ),
            constraints: BoxConstraints.expand(
            height: Theme.of(context).textTheme.headline4!.fontSize! * 1.2 + 500.0,
            ),
            alignment: Alignment.center,
            child: Column(

            children: [
            Text('Urna nec tincidunt praesent semper feugiat nibh sed. Interdum consectetur libero id faucibus nisl tincidunt. Vulputate eu scelerisque felis imperdiet proin fermentum leo. Congue mauris rhoncus aenean vel. Duis tristique sollicitudin nibh sit amet commodo nulla. Etiam tempor orci eu lobortis. Auctor urna nunc id cursus metus. Egestas quis ipsum suspendisse ultrices gravida dictum fusce ut. Blandit libero volutpat sed cras ornare arcu dui vivamus arcu. Ut tortor pretium viverra suspendisse potenti. Non quam lacus suspendisse faucibus interdum posuere. Lacus viverra vitae congue eu.',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white)),
              Image.asset("../images/cercleBleu.png",
                  height : 80,
                  width: 80,
                  color: Colors.white,
                  scale : 0.1
              )
            ]
            )
          ),
      );
  }
}
