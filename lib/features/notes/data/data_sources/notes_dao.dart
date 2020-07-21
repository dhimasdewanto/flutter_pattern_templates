import 'package:flutter_pattern_templates/features/notes/data/models/note_model.dart';
import 'package:sembast/sembast.dart';

abstract class NotesDao {
  StoreRef<int, Map<String, dynamic>> get store;

  Future<List<NoteModel>> getAll();

  Future<void> insert(NoteModel newNote);

  Future<void> delete(NoteModel deletedNote);
}