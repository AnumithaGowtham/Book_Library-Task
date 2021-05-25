/*import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import '../models/book.dart';

class DatabaseHelper {
  static DatabaseHelper _databaseHelper; // Singleton DatabaseHelper
  static Database _database; // Singleton Database

  String bookTable = 'book_table';
  String colId = 'id';
  String colTitle = 'title';
  String colAuthor = 'author';
  String colDescription = 'description';
  String colCoverUrl = 'coverUrl';
  String colCategory = 'category';
  String colRating = 'rating';

  DatabaseHelper._createInstance(); // Named constructor to create instance of DatabaseHelper

  factory DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper
          ._createInstance(); // This is executed only once, singleton object
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
    // Get the directory path for both Android and iOS to store database.
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'books.db';

    // Open/create the database at a given path
    var booksDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return booksDatabase;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $bookTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colTitle TEXT, $colAuthor TEXT,'
        '$colDescription TEXT, $colCoverUrl TEXT, $colCategory TEXT,$colRating TEXT)');
  }

  // Fetch Operation: Get all book objects from database
  Future<List<Map<String, dynamic>>> getTodoMapList() async {
    Database db = await this.database;

//  var result = await db.rawQuery('SELECT * FROM $todoTable order by $colTitle ASC');
    var result = await db.query(bookTable, orderBy: '$colTitle ASC');
    return result;
  }

  // Insert Operation: Insert a book object to database
  Future<int> insertTodo(Book todo) async {
    Database db = await this.database;
    var result = await db.insert(bookTable, todo.toMap());
    return result;
  }

  // Update Operation: Update a book object and save it to database
  Future<int> updateTodo(Book todo) async {
    var db = await this.database;
    var result = await db.update(bookTable, todo.toMap(),
        where: '$colId = ?', whereArgs: [todo.id]);
    return result;
  }

  Future<int> updateTodoCompleted(Book todo) async {
    var db = await this.database;
    var result = await db.update(bookTable, todo.toMap(),
        where: '$colId = ?', whereArgs: [todo.id]);
    return result;
  }

  // Delete Operation: Delete a book object from database
  Future<int> deleteTodo(int id) async {
    var db = await this.database;
    int result =
        await db.rawDelete('DELETE FROM $bookTable WHERE $colId = $id');
    return result;
  }

  // Get number of book objects in database
  Future<int> getCount() async {
    Database db = await this.database;
    List<Map<String, dynamic>> x =
        await db.rawQuery('SELECT COUNT (*) from $bookTable');
    int result = Sqflite.firstIntValue(x);
    return result;
  }

  // Get the 'Map List' [ List<Map> ] and convert it to 'book List' [ List<book> ]
  Future<List<Book>> getTodoList() async {
    var bookMapList = await getTodoMapList(); // Get 'Map List' from database
    int count =
        bookMapList.length; // Count the number of map entries in db table

    // ignore: deprecated_member_use
    List<Book> bookList = List<Book>();
    // For loop to create a 'book List' from a 'Map List'
    for (int i = 0; i < count; i++) {
      bookList.add(Book.fromMapObject(bookMapList[i]));
    }

    return bookList;
  }
}*/
