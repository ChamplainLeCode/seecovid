import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  static String dbname = "local_db.db";
  static Database localDb;
  
  ///Cette fonction permet d'initialiser la base de donnees
  static Future<void> initializeDb() async {
    String dbpath=await getDatabasesPath();
    var dbPath = join(dbpath, dbname);
    //maintenant nous ouvrons la base de donne
    localDb = await openDatabase(dbPath, version: 1,
        onCreate: (Database db, int version) async {
    });
  }


}
