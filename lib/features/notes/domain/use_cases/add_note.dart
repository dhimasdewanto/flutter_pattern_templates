import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/utils/use_case.dart';
import '../entities/note.dart';
import '../failures/notes_failures.dart';
import '../repositories/notes_repo.dart';

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
