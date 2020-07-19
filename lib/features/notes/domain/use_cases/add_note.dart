import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pattern_templates/core/use_cases/use_case.dart';
import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/failures/notes_failures.dart';
import 'package:flutter_pattern_templates/features/notes/domain/repositories/notes_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AddNote extends UseCase<Unit, Note, NotesFailures> {
  AddNote({
    @required this.notesRepo,
  });

  final NotesRepo notesRepo;

  @override
  Future<Either<NotesFailures, Unit>> execute(Note params) async {
    return notesRepo.addNote(params);
  }

  @override
  Future<Either<NotesFailures, Unit>> validate(Note params) async {
    if (params.body == null || params.body.isEmpty) {
      return left(const NotesFailures.emptyBody());
    } 

    return right(unit);
  }
}
