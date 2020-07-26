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

  @override
  StoreRef<int, Map<String, dynamic>> get store =>
      intMapStoreFactory.store("notes");

  @override
  Future<void> delete(NoteModel deletedNote) async {
    final db = await sembastDB.database;
    final finder = Finder(filter: Filter.byKey(deletedNote.id));
    await store.delete(db, finder: finder);
  }

  @override
  Future<List<NoteModel>> getAll() async {
    final db = await sembastDB.database;
    final record = await store.find(db);
    return record.map((snapshot) {
      final fruit = NoteModel.fromDBMap(snapshot.value);
      // An ID is a key of a record from the database.
      fruit.id = snapshot.key;
      return fruit;
    }).toList();
  }

  @override
  Future<void> insert(NoteModel newNote) async {
    final db = await sembastDB.database;
    await store.add(db, newNote.toDBMap());
  }

  @override
  Future<void> update(NoteModel updatedNote) async {
    final db = await sembastDB.database;
    final record = store.record(updatedNote.id);
    await record.put(db, updatedNote.toDBMap());
  }
}
