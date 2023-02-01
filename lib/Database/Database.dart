import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;
class Helper {
  late final String path;
  late Database _db;



  static const DB_Name = 'test.db';
  static const String Table_User = 'user';
  static const int Version = 1;

  static const String C_Name = 'name';
  static const String C_EnteryourEmail = 'enteryouremail';
  static const String C_EnterYourPassward= 'enteryourpassward';
  static const String C_MobileNumber = 'mobilenumber';

Future<Database> get db async {
  if (_db != null) {
    return _db;
  }
  _db = await initDb();

  return _db;
}

 initDb() async {
   io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
   String? DB_Name;
   String path = join(documentsDirectory.path, DB_Name);
   var theDb = await openDatabase(path, version: Version, onCreate: _onCreate);
   return theDb;
 }
 _onCreate(Database db , int intversion) async{
  await db.execute("CREATE TABLE $Table_User ("
      "$C_Name TEXT,"
      " $C_EnteryourEmail TEXT,"
      "$C_EnterYourPassward TEXT,"
      "$C_MobileNumber TEXT,"
      "PRIMARY KEY ($C_Name)"
  ")");
}

}