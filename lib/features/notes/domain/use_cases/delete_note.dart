import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pattern_templates/core/use_cases/use_case.dart';
import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/failures/notes_failures.dart';
import 'package:flutter_pattern_templates/features/notes/domain/repositories/notes_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DeleteNote extends UseCase<Unit, Note, NotesFailures> {
  DeleteNote({
    @required this.notesRepo,
  });

  final NotesRepo notesRepo;

  @override
  Future<Either<NotesFailures, Unit>> execute(Note params) async {
    return notesRepo.deleteNote(params);
  }

  @override
  Future<Either<NotesFailures, Unit>> validate(Note params) async {
    return right(unit);
  }
}