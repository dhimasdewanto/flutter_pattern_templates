import 'package:flutter/foundation.dart';
import 'package:flutter_pattern_templates/core/databases/sembast_db.dart';
import 'package:injectable/injectable.dart';
import 'package:sembast/sembast.dart';

import 'auth_local.dart';

@LazySingleton(as: AuthLocal)
class AuthLocalImpl implements AuthLocal {
  AuthLocalImpl({
    @required this.sembastDB,
  });

  final SembastDB sembastDB;

  StoreRef<int, Map<String, dynamic>> get store =>
      intMapStoreFactory.store("auth");
  
  @override
  Future<bool> isLoggedIn() async {
    final db = await sembastDB.database;
    final hasLogin = await store.findKey(db);
    return hasLogin != null;
  }

  @override
  Future<void> login(String username) async {
    final db = await sembastDB.database;
    await store.add(db, {"username": username});
  }

  @override
  Future<void> logout() async {
    final db = await sembastDB.database;
    await store.delete(db);
  }
}