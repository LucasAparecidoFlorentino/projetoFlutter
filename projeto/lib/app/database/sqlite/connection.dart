
import 'package:path/path.dart';
import 'package:projeto/app/database/sqlite/script.dart';
import 'package:sqflite/sqflite.dart';

class Connection {
  static Database _db;

  static Future<Database> get() async{
    if(_db == null){
      var path = join(await getDatabasesPath(), 'bancoProdutos');
      //deleteDatabase(path);
      _db = await openDatabase(
        path,
        version: 1,
        onCreate: (db, v){
          db.execute(createTable);
          db.execute(insert);
          db.execute(insert2);
          db.execute(insert3);
        },
      );
    }
    return _db;
  }
}