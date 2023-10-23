import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

//this resources defines a method to save datas by sqlite
//which can prove the application.
  Future<Database> opendb() async{ 
    final datebase =  openDatabase(
    join(await getDatabasesPath(), 'imagepath.db'),
    onCreate: (db, version) {
      return db.execute('CREATE TABLE imageslocation (id INTEGER PRIMARY KEY, image_path TEXT)');
    },
    version: 1
    );
    return datebase;
  }

  Future<void> saveimagepath(String imagePath, int id) async{
    final db = await opendb();
    var value = {
      'id': id,
      'image_path': imagePath
    };
    await db.insert('imageslocation', value, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<String>> loadimagepath() async{
    final db = await opendb();
    List<Map<String,Object?>> paths =await db.query('imageslocation');
    return List.generate(paths.length, (i) {
      String imagepth = paths[paths.length-i-1]['image_path'].toString();
      return imagepth;
    });
  }

  Future<void> deletepath(String currentpath) async{
    final db = await opendb();
    db.delete('imageslocation', where: 'image_path = ?', whereArgs: [currentpath]);
  }
