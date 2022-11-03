import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBAdmin {
  static final DBAdmin db = DBAdmin._();

  DBAdmin._();

  Database? myDatabase;

  Future<Database?> getDatabase() async {
    if (myDatabase != null) {
      return myDatabase;
    }
    myDatabase = await initDatabase();
    return myDatabase;
  }

  Future<Database> initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    // print(directory.path);
    String path = join(directory.path, "QrDB.db");
    return openDatabase(
      path,
      version: 1,
      onOpen: (db) {},
      onCreate: (Database db, int version) async {
        await db.execute(
            "CREATE TABLE QR(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, description TEXT, date TEXT, time TEXT, url TEXT)");
      },
    );
  }

  Future<int> insertQR() async {
    Database? db = await getDatabase();
    int res = await db!.insert(
      "QR",
      {
        "title": "Video labortorio 5",
        "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
        "date": "2022-10-11",
        "time": "10:45",
        "url": "https://www.youtube.com/watch?v=UK2000bGHio&ab_channel=LifeofLuba",
      },
    );
    return res;
  }

}
