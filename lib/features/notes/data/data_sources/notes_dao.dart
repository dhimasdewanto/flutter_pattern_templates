import 'package:flutter/foundation.dart';
import 'package:sembast/sembast.dart';

import '../models/note_model.dart';

abstract class NotesDao {
  @protected
  StoreRef<int, Map<String, dynamic>> get store;

  Future<List<NoteModel>> getAll();

  Future<void> insert(NoteModel newNote);

  Future<void> delete(NoteModel deletedNote);

  Future<void> update(NoteModel updatedNote);
}