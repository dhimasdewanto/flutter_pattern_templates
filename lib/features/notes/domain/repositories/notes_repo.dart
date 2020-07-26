import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../entities/note.dart';
import '../failures/notes_failures.dart';

abstract class NotesRepo {
  Future<Either<NotesFailures, List<Note>>> getListNotes();
  Future<Either<NotesFailures, List<Note>>> getListNotesFilter({@required bool isDone});
  Future<Either<NotesFailures, Unit>> addNote(Note newNote);
  Future<Either<NotesFailures, Unit>> deleteNote(Note deletedNote);
  Future<Either<NotesFailures, Unit>> updateNote(Note updatedNote);
}