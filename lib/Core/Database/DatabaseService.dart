import 'package:movielistapp/Core/Error/exception.dart';
import 'package:movielistapp/Features/Pages/MovieScreen/Data/Model/movieModel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseService {
  static final DatabaseService _instance = DatabaseService._internal();
  DatabaseService._internal();

  static DatabaseService get instance => _instance;

  Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'movies.db');

    return await openDatabase(
      path,
      version: 1,
      onUpgrade: _onUpgrade,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE movies (
            id INTEGER PRIMARY KEY,
  name TEXT DEFAULT '',
  url TEXT DEFAULT '',
  language TEXT DEFAULT '',
  genres TEXT DEFAULT '',
  status TEXT DEFAULT '',
  runtime INTEGER DEFAULT 0,
  averageRuntime INTEGER DEFAULT 0,
  premiered TEXT DEFAULT '',
  ended TEXT DEFAULT '',
  officialSite TEXT DEFAULT '',
  schedule_time TEXT DEFAULT '',
  schedule_days TEXT DEFAULT '',
  rating REAL DEFAULT 0.0,
  weight INTEGER DEFAULT 0,
  network_name TEXT DEFAULT '',
  network_country TEXT DEFAULT '',
  network_timezone TEXT DEFAULT '',
  image_medium TEXT DEFAULT '',
  image_original TEXT DEFAULT '',
  summary TEXT DEFAULT ''
          )
        ''');
      },
    );
  }

  Future<void> insertMovie(MovieModel movie) async {
    final db = await database;
    await db.insert(
      'movies',
      movie.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  void _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < newVersion) {
      if (oldVersion < newVersion) {
        // Check if the 'id' column already exists
        final result = await db.rawQuery("PRAGMA table_info(movies)");
        final columns =
            result.map((column) => column['name'] as String).toList();

        if (!columns.contains('id')) {
          await db.execute('ALTER TABLE movies ADD COLUMN id TEXT');
        }
      }
    }
  }

  Future<List<MovieModel>> getCachedMovies() async {
    try {
      final db = await database;
      final List<Map<String, dynamic>> movies = await db.query('movies');
      return movies.map((json) => MovieModel.fromJson(json)).toList();
    } catch (e) {
      print("Error fetching movies: $e");
      throw localStorageException(message: "Failed to fetch movies: $e");
    }
  }

  Future<void> clearMovies() async {
    final db = await database;
    await db.delete('movies');
  }
}
