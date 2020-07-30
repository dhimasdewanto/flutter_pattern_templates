import 'package:flutter_pattern_templates/core/configs/env.dart';
import 'package:injectable/injectable.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast_web/sembast_web.dart';

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

    // Open the database.
    return databaseFactory.openDatabase(databaseName);
  }
}
