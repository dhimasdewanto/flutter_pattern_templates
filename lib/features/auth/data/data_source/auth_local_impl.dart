import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';

import 'auth_local.dart';

@LazySingleton(as: AuthLocal)
class AuthLocalImpl implements AuthLocal {
  static const _boxName = "box_auth";
  static const _keyName = "auth";

  final _box = GetStorage(_boxName);
  
  @override
  Future<bool> isLoggedIn() async {
    // Initilize first so it can read the data before it's written.
    await _box.initStorage;

    return _box.hasData(_keyName);
  }

  @override
  Future<void> login(String username) async {
    await _box.write(_keyName, username);
  }

  @override
  Future<void> logout() async {
    await _box.erase();
  }
}