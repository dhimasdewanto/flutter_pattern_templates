import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

import '../configs/env.dart';
import '../configs/secret_reader.dart';
import 'encryptions/encrypt_codec.dart';
import 'sembast_db.dart';

@LazySingleton(as: SembastDB, env: [Env.prod, Env.dev])
class SembastIO implements SembastDB {
  static const databaseName = "database_io.db";

  Database _database;

  @override
  Future<Database> get database async {
    if (_database != null) {
      return _database;
    }

    return _database = await _getOpenDatabase();
  }

  Future<Database> _getOpenDatabase() async {
    /// Get the application documents directory.
    final dir = await getApplicationDocumentsDirectory();

    /// Make sure it exists.
    await dir.create(recursive: true);

    /// Build the database path
    final dbPath = join(dir.path, databaseName);

    final codec = getEncryptSembastCodec(
      password: SecretReader.sembastPassword,
    );

    /// Open database.
    return databaseFactoryIo.openDatabase(dbPath, codec: codec);
  }
}
