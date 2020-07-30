import 'package:sembast/sembast.dart';

abstract class SembastDB {
  Future<Database> get database;
}
