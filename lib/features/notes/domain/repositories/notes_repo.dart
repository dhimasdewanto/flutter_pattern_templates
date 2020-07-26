import 'package:dartz/dartz.dart';
import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/failures/notes_failures.dart';

abstract class NotesRepo {
  Future<Either<NotesFailures, List<Note>>> getListNotes();
  Future<Either<NotesFailures, Unit>> addNote(Note newNote);
  Future<Either<NotesFailures, Unit>> deleteNote(Note deletedNote);
  Future<Either<NotesFailures, Unit>> updateNote(Note updatedNote);
}