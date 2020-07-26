import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pattern_templates/features/notes/data/data_sources/notes_dao.dart';
import 'package:flutter_pattern_templates/features/notes/data/models/note_model.dart';
import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/failures/notes_failures.dart';
import 'package:flutter_pattern_templates/features/notes/domain/repositories/notes_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: NotesRepo)
class NotesRepoImpl implements NotesRepo {
  NotesRepoImpl({
    @required this.localSource,
  });

  final NotesDao localSource;

  @override
  Future<Either<NotesFailures, List<Note>>> getListNotes() async {
    try {
      final source = await localSource.getAll();
      final listNotes =
          source.map((noteModel) => noteModel.toDomain()).toList();
      return right(listNotes);
    } catch (e) {
      return left(const NotesFailures.unexpected());
    }
  }

  @override
  Future<Either<NotesFailures, Unit>> addNote(Note newNote) async {
    try {
      await localSource.insert(NoteModel.fromDomain(newNote));
      return right(unit);
    } catch (e) {
      return left(const NotesFailures.unexpected());
    }
  }

  @override
  Future<Either<NotesFailures, Unit>> deleteNote(Note deletedNote) async {
    try {
      await localSource.delete(NoteModel.fromDomain(deletedNote));
      return right(unit);
    } catch (e) {
      return left(const NotesFailures.unexpected());
    }
  }

  @override
  Future<Either<NotesFailures, Unit>> updateNote(Note updatedNote) async {
    try {
      await localSource.update(NoteModel.fromDomain(updatedNote));
      return right(unit);
    } catch (e) {
      return left(const NotesFailures.unexpected());
    }
  }
}
