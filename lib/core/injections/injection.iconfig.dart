// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_pattern_templates/features/utils/data/databases/sembast_db.dart';
import 'package:flutter_pattern_templates/features/notes/data/repositories/notes_repo_data.dart';
import 'package:flutter_pattern_templates/features/notes/domain/repositories/notes_repo.dart';
import 'package:flutter_pattern_templates/features/notes/presentation/blocs/notes/notes_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<NotesRepo>(
      () => NotesRepoData(sembastDB: g<SembastDB>()));
  g.registerFactory<NotesBloc>(() => NotesBloc(notesRepo: g<NotesRepo>()));

  //Eager singletons must be registered in the right order
  g.registerSingleton<SembastDB>(SembastDB());
}
