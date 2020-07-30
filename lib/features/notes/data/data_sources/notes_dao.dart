import '../models/note_model.dart';

abstract class NotesDao {
  Future<List<NoteModel>> getAll();

  Future<void> insert(NoteModel newNote);

  Future<void> delete(NoteModel deletedNote);

  Future<void> update(NoteModel updatedNote);

  Future<List<NoteModel>> getFilter({bool isDone = false});
}