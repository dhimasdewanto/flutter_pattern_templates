// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_pattern_templates/core/injections/register_modules.dart';
import 'package:dio/dio.dart';
import 'package:flutter_pattern_templates/features/utils/data/databases/sembast_db.dart';
import 'package:flutter_pattern_templates/features/notes/data/data_sources/notes_local_source_impl.dart';
import 'package:flutter_pattern_templates/features/notes/data/data_sources/notes_local_source.dart';
import 'package:flutter_pattern_templates/features/notes/data/repositories/notes_repo_data.dart';
import 'package:flutter_pattern_templates/features/notes/domain/repositories/notes_repo.dart';
import 'package:flutter_pattern_templates/features/notes/domain/use_cases/add_note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/use_cases/delete_note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/use_cases/get_list_notes.dart';
import 'package:flutter_pattern_templates/features/notes/presentation/blocs/notes/notes_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final registerModules = _$RegisterModules();
  g.registerLazySingleton<Dio>(() => registerModules.dio);
  g.registerLazySingleton<SembastDB>(() => SembastDB());
  g.registerLazySingleton<NotesLocalSource>(
      () => NotesLocalSourceImpl(sembastDB: g<SembastDB>()));
  g.registerLazySingleton<NotesRepo>(
      () => NotesRepoData(localSource: g<NotesLocalSource>()));
  g.registerLazySingleton<AddNote>(() => AddNote(notesRepo: g<NotesRepo>()));
  g.registerLazySingleton<DeleteNote>(
      () => DeleteNote(notesRepo: g<NotesRepo>()));
  g.registerLazySingleton<GetListNotes>(
      () => GetListNotes(notesRepo: g<NotesRepo>()));
  g.registerFactory<NotesBloc>(() => NotesBloc(
        getListNotes: g<GetListNotes>(),
        addNote: g<AddNote>(),
        deleteNote: g<DeleteNote>(),
      ));
}

class _$RegisterModules extends RegisterModules {}
