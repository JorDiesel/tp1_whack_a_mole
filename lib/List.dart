import 'package:flutter/material.dart';
import 'package:tp1_whack_a_mole/sqlite.dart';
import 'sqlite.dart';

import 'background.dart';

var bd = baseDonnee.GestionBd();
Future<List<Score>> data() async{
  return baseDonnee.Scores(bd);
}

class Liste extends StatelessWidget {
  const Liste ({super.key});
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Background(classeActive:  Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: FutureBuilder<List<Score>>(
            future: data(), // a previously-obtained Future<String> or null
            builder: (BuildContext context,AsyncSnapshot<List<Score>> snapshot) {
            List<Widget> children;
            if (snapshot.hasData) {
              children = <Widget>[
              ListView.builder(
              primary: true,
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    height: 50,
                    color: index.isEven
                        ? Color.fromRGBO(120, 120, 120, 100)
                        : Color.fromRGBO(80, 80, 80, 100),
                    child: new GestureDetector(
                            onTap: (){
                              print("Container clicked");
                            },
                            child: new Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:Row(
                                    children:[
                                      Padding(padding:EdgeInsets.all(20.0)),
                                      Text('date: '+(snapshot.data![int.parse('$index')].date).toString(),style:TextStyle(color: Colors.white)),
                                      Padding(padding:EdgeInsets.all(16.0)),
                                      Text((snapshot.data![int.parse('$index')].nom).toString(),style:TextStyle(color: Colors.white)),
                                      Spacer(),
                                      Text('score: '+(snapshot.data![int.parse('$index')].nom).toString(),style:TextStyle(color: Colors.white)),
                                      Padding(padding:EdgeInsets.all(20.0))
                                    ]
                                )

                            )
                        )
                    );
                  }),
                    ];
                    } else if (snapshot.hasError) {
                      children = <Widget>[
                        const Icon(
                          Icons.error_outline,
                          color: Colors.red,
                          size: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text('Error: ${snapshot.error}'),
                        ),
                      ];
                    }
                    else {
                      children = const <Widget>[
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: CircularProgressIndicator(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text('Awaiting result...'),
                        ),
                      ];
                    }
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: children,
                      ),
                    );
                  },
        )
        )
        )
    );
  }
}
