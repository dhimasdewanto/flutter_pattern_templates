import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/repositories/notes_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'notes_bloc.freezed.dart';
part 'notes_event.dart';
part 'notes_state.dart';

class NotesBloc extends Bloc<NotesEvent, NotesState> {
  NotesBloc({
    @required this.notesRepo,
  }) : super(NotesState.initial());

  final NotesRepo notesRepo;

  @override
  Stream<NotesState> mapEventToState(
    NotesEvent event,
  ) async* {
    yield* event.map(
      load: (event) async* {
        final listNotes = await notesRepo.getListNotes();
        yield state.copyWith(
          listNotes: listNotes,
        );
      },
      insert: (event) async* {
        await notesRepo.addNote(event.note);
        final listNotes = await notesRepo.getListNotes();
        yield state.copyWith(
          listNotes: listNotes,
        );
      },
      remove: (event) async* {
        await notesRepo.deleteNote(event.note);
        final listNotes = await notesRepo.getListNotes();
        yield state.copyWith(
          listNotes: listNotes,
        );
      },
    );
  }
}
