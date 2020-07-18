import 'package:flutter/foundation.dart';
import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/repositories/notes_repo.dart';
import 'package:flutter_pattern_templates/features/utils/data/databases/sembast_db.dart';
import 'package:injectable/injectable.dart';
import 'package:sembast/sembast.dart';

@LazySingleton(as: NotesRepo)
class NotesRepoData implements NotesRepo {
  NotesRepoData({
    @required this.sembastDB,
  });

  final SembastDB sembastDB;

  final _store = intMapStoreFactory.store("notes");

  @override
  Future<List<Note>> getListNotes() async {
    final db = await sembastDB.database;
    final record = await _store.find(db);
    return record.map((snapshot) {
      final fruit = Note.fromMap(snapshot.value);
      // An ID is a key of a record from the database.
      fruit.id = snapshot.key;
      return fruit;
    }).toList();
  }

  @override
  Future<void> addNote(Note newNote) async {
    final db = await sembastDB.database;
    await _store.add(db, newNote.toMap());
  }

  @override
  Future<void> deleteNote(Note deletedNote) async {
    final db = await sembastDB.database;
    final finder = Finder(filter: Filter.byKey(deletedNote.id));
    await _store.delete(db, finder: finder);
  }
}
