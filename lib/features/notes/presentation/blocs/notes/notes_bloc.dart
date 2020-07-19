import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/use_cases/get_list_notes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'notes_bloc.freezed.dart';
part 'notes_event.dart';
part 'notes_state.dart';

@injectable
class NotesBloc extends Bloc<NotesEvent, NotesState> {
  NotesBloc({
    @required this.getListNotes,
  }) : super(NotesState.initial());

  final GetListNotes getListNotes;

  @override
  Stream<NotesState> mapEventToState(
    NotesEvent event,
  ) async* {
    yield* event.map(
      load: (event) async* {
        final result = await getListNotes(unit);
        yield result.fold(
          (failure) => state,
          (listNotes) => state.copyWith(
            listNotes: listNotes,
          ),
        );
      },
      insert: (event) async* {
        // await notesRepo.addNote(event.note);
        // final listNotes = await notesRepo.getListNotes();
        // yield state.copyWith(
        //   listNotes: listNotes,
        // );
      },
      remove: (event) async* {
        // await notesRepo.deleteNote(event.note);
        // final listNotes = await notesRepo.getListNotes();
        // yield state.copyWith(
        //   listNotes: listNotes,
        // );
      },
    );
  }
}
