import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pattern_templates/core/use_cases/use_case.dart';
import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/failures/notes_failures.dart';
import 'package:flutter_pattern_templates/features/notes/domain/repositories/notes_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetListNotes extends UseCase<List<Note>, Unit, NotesFailures> {
  GetListNotes({
    @required this.notesRepo,
  });

  final NotesRepo notesRepo;

  @override
  Future<Either<NotesFailures, List<Note>>> execute(Unit params) async {
    final listNotes = await notesRepo.getListNotes();
    return listNotes;
  }

  @override
  Future<Either<NotesFailures, Unit>> validate(Unit params) async {
    return right(unit);
  }
}
