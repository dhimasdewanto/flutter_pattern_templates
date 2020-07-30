import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sembast/sembast.dart';

import '../../../../core/databases/sembast_db.dart';
import '../models/note_model.dart';
import 'notes_dao.dart';

@LazySingleton(as: NotesDao)
class NotesDaoImpl implements NotesDao {
  NotesDaoImpl({
    @required this.sembastDB,
  });

  final SembastDB sembastDB;

  StoreRef<int, Map<String, dynamic>> get store =>
      intMapStoreFactory.store("notes");

  @override
  Future<void> delete(NoteModel deletedNote) async {
    final db = await sembastDB.database;
    final key = int.parse(deletedNote.id);

    final finder = Finder(filter: Filter.byKey(key));
    await store.delete(db, finder: finder);
  }

  @override
  Future<void> insert(NoteModel newNote) async {
    final db = await sembastDB.database;
    await store.add(db, newNote.toMap());
  }

  @override
  Future<void> update(NoteModel updatedNote) async {
    final db = await sembastDB.database;
    final key = int.parse(updatedNote.id);

    final record = store.record(key);
    await record.put(db, updatedNote.toMap());
  }

  @override
  Future<List<NoteModel>> getAll() async {
    final db = await sembastDB.database;
    final record = await store.find(db);
    return record.map((snapshot) {
      final fruit = NoteModel.fromMap(snapshot.value);
      fruit.id = "${snapshot.key}";
      return fruit;
    }).toList();
  }

  @override
  Future<List<NoteModel>> getFilter({bool isDone = false}) async {
    final db = await sembastDB.database;
    final finder = Finder(
      filter: Filter.equals("is_done", isDone),
    );
    final record = await store.find(
      db,
      finder: finder,
    );
    return record.map((snapshot) {
      final fruit = NoteModel.fromMap(snapshot.value);
      fruit.id = "${snapshot.key}";
      return fruit;
    }).toList();
  }
}
