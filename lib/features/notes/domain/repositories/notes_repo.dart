import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';

abstract class NotesRepo {
  Future<List<Note>> getListNotes();
  Future<void> addNote(Note newNote);
  Future<void> deleteNote(Note deletedNote);
}