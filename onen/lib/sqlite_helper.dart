import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SQLiteHelper {
  late Database _db;
  String dbFile = 'lexitron.sqlite';

  Future openDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, dbFile);

    //check db existed?
    bool exists = await databaseExists(path);

    if (!exists) {
      print('No have DB');
      //no db
      //copy db from asset folder
      try {
        Directory(dirname(path)).create(recursive: true);
      } catch (e) {
        print("Error: cannot create folder");
      }

      //copy fb to device's folder
      //open file and read
      ByteData data = await rootBundle.load(join('assets/db', dbFile));
      List<int> bytes = data.buffer.asUint8List(data.offsetInBytes);
      //wirte a file
      await File(path).writeAsBytes(bytes, flush: true);
      print('Copy DB success');
    } else {
      print('Use existsing DB');
    }

    //open DB
    _db = await openDatabase(path, readOnly: true, singleInstance: true);
  }

  Future<List> getData() async {
    List result = await _db.rawQuery('SELECT * FROM eng2th');
    if (result.isEmpty) {
      print('Not found');
    } else {
      // print(result);
      print('Result success');
    }
    return result;
  }

  Future<List> searchDB(keyword) async {
    List result = await _db
        .rawQuery('SELECT * FROM eng2th WHERE eentry LIKE ?', [keyword]);
    print(result);
    return result;
  }

  void closeDB() async {
    await _db.close();
    print('DB closed');
  }
}
