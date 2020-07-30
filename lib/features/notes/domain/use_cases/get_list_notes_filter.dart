import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/utils/use_case.dart';
import '../entities/note.dart';
import '../failures/notes_failures.dart';
import '../repositories/notes_repo.dart';

@lazySingleton
class GetListNotesFilter
    extends UseCase<List<Note>, GetListNotesFilterParams, NotesFailures> {
  GetListNotesFilter({
    @required this.notesRepo,
  });

  final NotesRepo notesRepo;

  @override
  Future<Either<NotesFailures, List<Note>>> execute(
    GetListNotesFilterParams params,
  ) async {
    return notesRepo.getListNotesFilter(
      isDone: params.isDone,
    );
  }

  @override
  Future<Either<NotesFailures, Unit>> validate(
    GetListNotesFilterParams params,
  ) async {
    return right(unit);
  }
}

class GetListNotesFilterParams {
  GetListNotesFilterParams({
    @required this.isDone,
  });

  final bool isDone;
}
