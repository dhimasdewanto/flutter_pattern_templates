import 'package:injectable/injectable.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast_web/sembast_web.dart';

import '../configs/env.dart';
import '../configs/secret_reader.dart';
import 'encryptions/encrypt_codec.dart';
import 'sembast_db.dart';

@LazySingleton(as: SembastDB, env: [Env.prodWeb, Env.devWeb])
class SembastWeb implements SembastDB {
  static const databaseName = "database_web.db";

  Database _database;

  @override
  Future<Database> get database async {
    if (_database != null) {
      return _database;
    }

    return _database = await _getOpenDatabase();
  }

  Future<Database> _getOpenDatabase() async {
    // Declare database factory for web.
    final databaseFactory = databaseFactoryWeb;

    final codec = getEncryptSembastCodec(
      password: SecretReader.sembastPassword,
    );

    // Open the database.
    return databaseFactory.openDatabase(databaseName, codec: codec);
  }
}
