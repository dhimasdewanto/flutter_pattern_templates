// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_pattern_templates/core/injections/register_modules.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter_pattern_templates/features/news/data/data_sources/news_network_source_impl.dart';
import 'package:flutter_pattern_templates/features/news/data/data_sources/news_network_source.dart';
import 'package:flutter_pattern_templates/features/news/data/repositories/news_repo_data.dart';
import 'package:flutter_pattern_templates/features/news/domain/repositories/news_repo.dart';
import 'package:flutter_pattern_templates/core/networks/connectivity_actions/request_retrier.dart';
import 'package:flutter_pattern_templates/core/networks/interceptors/retry_on_connection_change_interceptor.dart';
import 'package:flutter_pattern_templates/core/databases/sembast_db.dart';
import 'package:flutter_pattern_templates/features/news/domain/use_cases/get_top_headlines.dart';
import 'package:flutter_pattern_templates/features/news/presentation/blocs/news/news_bloc.dart';
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
  g.registerLazySingleton<Connectivity>(() => registerModules.connectivity);
  g.registerLazySingleton<Dio>(() => registerModules.dio);
  g.registerLazySingleton<NewsNetworkSource>(
      () => NewsNetworkSourceImpl(dio: g<Dio>()));
  g.registerLazySingleton<NewsRepo>(
      () => NewsRepoData(newsNetworkSource: g<NewsNetworkSource>()));
  g.registerLazySingleton<RequestRetrier>(
      () => RequestRetrier(connectivity: g<Connectivity>(), dio: g<Dio>()));
  g.registerLazySingleton<RetryOnConnectionChangeInterceptor>(() =>
      RetryOnConnectionChangeInterceptor(requestRetrier: g<RequestRetrier>()));
  g.registerLazySingleton<SembastDB>(() => SembastDB());
  g.registerLazySingleton<GetTopHeadlines>(
      () => GetTopHeadlines(newsRepo: g<NewsRepo>()));
  g.registerFactory<NewsBloc>(
      () => NewsBloc(getTopHeadlines: g<GetTopHeadlines>()));
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
