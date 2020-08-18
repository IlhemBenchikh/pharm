import 'package:ilhem/models/drugs.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static DatabaseHelper _databaseHelper;
  static Database _database;

  String drugstab = 'drugs_tab';
  String colname = 'name';
  String collab = 'lab';
  String colpre = 'pre';
  String colci = 'ci';
  String colcmin = 'cmin';
  String colcmax = 'cmax';
  String colvap = 'vap';
  String colprix = 'prix';
  String colstab = 'stab';
  DatabaseHelper._createInstance();

  factory DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._createInstance();
    }
    return _databaseHelper;
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'drugs.db';

    var drugsDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return drugsDatabase;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $drugstab($colname TEXT primary key autoincrement, $collab TEXT, $colpre DOUBLE, $colci DOUBLE, $colcmin DOUBLE, $colcmax DOUBLE, $colvap DOUBLE, $colprix DOUBLE, $colstab TEXT)');
  }

  //fetch operation: get all grug objects from database

  Future<List<Map<String, dynamic>>> getDrugMapList() async {
    Database db = await this.database;

    var result = await db.query(drugstab, orderBy: '$colname ASC');
    return result;
  }

  //insert operation: insert a drug object to database

  Future<int> insertDrug(Drugs drug) async {
    Database db = await this.database;
    var result = await db.insert(drugstab, drug.toMap());
    return result;
  }

  //update operation: update a drug object and save it to database

  Future<int> updateDrug(Drugs drug) async {
    var db = await this.database;
    var result = await db.update(drugstab, drug.toMap(),
        where: '$colname = ?', whereArgs: [drug.name]);
    return result;
  }

  //delete operation: delete drug objects in database

  Future<int> deleteDrug(String name) async {
    var db = await this.database;
    int result =
        await db.rawDelete('DELETE FROM $drugstab WHERE $colname = $name');
    return result;
  }

  //get number of drug objects in database

  Future<int> getCount() async {
    Database db = await this.database;
    List<Map<String, dynamic>> x =
        await db.rawQuery('SELECT COUNT (*) from $drugstab');
    int result = Sqflite.firstIntValue(x);
    return result;
  }
}
