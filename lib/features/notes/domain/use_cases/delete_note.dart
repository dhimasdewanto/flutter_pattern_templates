import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/utils/use_cases/use_case.dart';
import '../entities/note.dart';
import '../failures/notes_failures.dart';
import '../repositories/notes_repo.dart';

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