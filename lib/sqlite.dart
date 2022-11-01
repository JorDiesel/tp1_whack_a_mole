import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Score {
  final int id;
  final String nom;
  final int score;
  final String date;

  const Score({
    required this.id,
    required this.nom,
    required this.score,
    required this.date
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nom': nom,
      'score': score,
      'date' : date
    };
  }

  @override
  String toString() {
    return 'Scores{id: $id, nom: $nom, score: $score, date: $date}';
  }
}
class baseDonnee {
  static Future<Database> GestionBd() async {
    WidgetsFlutterBinding.ensureInitialized();
    // Ouvre la bd
    final database = openDatabase(
      //path db
      join(await getDatabasesPath(), 'score_database.db'),
      onCreate: (db, version) {
        // create table
        db.execute(
          'CREATE TABLE scores(id INTEGER PRIMARY KEY, nom VARCHAR(255), score INTEGER, date TIMESTAMP)',
        );
        return db.execute(
            "INSERT INTO scores (nom, score, date) VALUES ('joe', 378678)",
        );
      },
      version: 1,
    );
    return database;
  }
  static Future<List<Score>> Scores(database) async {
    //Ref db
    final db = await database;

    // Select all
    final List<Map<String, dynamic>> maps = await db.query('scores');

    return await List.generate(maps.length, (i) {
      return Score(
          id: maps[i]['id'],
          nom: maps[i]['nom'],
          score: maps[i]['score'],
          date: maps[i]['date']
      );
    });
  }
  static Future<void> Ajouter(database,nom,score) async {
    //Ref db
    final db = await database;
    var list = await Scores(database);
    var longueur = list.length;
    if (longueur == null){
      longueur=1;
    }

    var leScore = score(
      id: longueur+1,
      nom: nom,
      score: score,
      date: DateTime.now()
    );
    return await db.insert(
      'scores',
      leScore.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
  static Future<void> Delete(database,id) async
  {
    final db = await database;
    // Remove the Dog from the database.
    await db.delete(
      'scores',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
  static Future<void> Update(database,id,nom,score,date) async {
    //Ref db
    final db = await database;

    var leScore = score(
        id: id,
        nom: nom,
        score: score,
        date: date
    );
    await db.update(
      'scores',
      score.toMap(),
      where: 'id = ?',
      whereArgs: [score.id],
    );
  }
}



