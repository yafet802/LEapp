import 'package:leapp/database/palabras.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  //Instancia de la base de datos
  static final DB instance = DB._init();
  static Database? _database;
  DB._init();

  final String tablePalabra = 'palabras_A';

  //Metodo para buscar la base de datos
  Future<Database> get database async {
    //Si la base de datos ya esta creada, la devuelve
    if (_database != null) return _database!;

    //Si la base de datos no esta creada, se crea
    //LEAPP.db es el nombre de la base de datos
    _database = await _initDB('LEAPP.db');
    return _database!;
  }

  //Metodo para crear la base de datos
  Future<Database> _initDB(String filePath) async {
    //Obtiene la ubicacion por defecto de la base de datos
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _onCreateDB);
  }

  //Al crear la base de datos se crea una tabla
  Future _onCreateDB(Database db, int version) async {
    await db.execute('''
    CREATE TABLE $tablePalabra(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    palabra TEXT,
    imagen TEXT,
    audio TEXT
    )
    ''');
  }

  //Metodo para insertar registro en una tabla
  Future<void> insert(Palabra palabra) async {
    //Referencia a la base de datos
    final db = await instance.database;

    await db.insert(tablePalabra, palabra.toMap());
  }

  //Metodo para obtener todos los registros de una tabla
  Future<List<Palabra>> getAllPalabras() async {
    final db = await instance.database;

    final List<Map<String, dynamic>> maps = await db.query(tablePalabra);

    return List.generate(maps.length, (index) {
      return Palabra(
        id: maps[index]['id'],
        palabra: maps[index]['palabra'], 
        imagen: maps[index]['imagen'], 
        audio: maps[index]['audio']
      );
    });
  }

  //Metodo para eliminar un registro por id de una tabla
  Future<int> delete(int id) async {
    final db = await instance.database;
    return await db.delete(tablePalabra, where: "id = ?", whereArgs: [id]);
  }
}