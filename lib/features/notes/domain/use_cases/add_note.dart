import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/utils/use_case.dart';
import '../entities/note.dart';
import '../failures/notes_failures.dart';
import '../repositories/notes_repo.dart';

@lazySingleton
class AddNote extends UseCase<Unit, String, NotesFailures> {
  AddNote({
    @required this.notesRepo,
  });

  final NotesRepo notesRepo;

  @override
  Future<Either<NotesFailures, Unit>> execute(String body) async {
    return notesRepo.addNote(Note(
      id: Uuid().v4(),
      body: body,
      isDone: false,
    ));
  }

  @override
  Future<Either<NotesFailures, Unit>> validate(String body) async {
    if (body == null || body.isEmpty) {
      return left(const NotesFailures.emptyBody());
    }

    return right(unit);
  }
}
