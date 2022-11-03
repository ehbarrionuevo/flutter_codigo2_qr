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
    String path = join(directory.path, "QrDB.db");
    return openDatabase(
      path,
      version: 1,
      onOpen: (db) {},
      onCreate: (Database db, int version) async {
        await db.execute("CREATE TABLE QR(id INTEGER PRIMARY AUTOINCREMENT, title TEXT, description TEXT, date TEXT, time TEXT, url TEXT)");
      },
    );
  }
}
