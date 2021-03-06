// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';

import '../../features/notes/domain/use_cases/add_note.dart';
import '../../features/auth/presentation/blocs/auth/auth_bloc.dart';
import '../../features/auth/data/data_source/auth_local.dart';
import '../../features/auth/data/data_source/auth_local_impl.dart';
import '../../features/auth/domain/repositories/auth_repo.dart';
import '../../features/auth/data/repositories/auth_repo_impl.dart';
import '../../features/notes/domain/use_cases/check_is_done.dart';
import '../../features/auth/domain/use_cases/check_is_logged_in.dart';
import '../../features/notes/domain/use_cases/delete_note.dart';
import '../../features/notes/domain/use_cases/get_list_notes.dart';
import '../../features/notes/domain/use_cases/get_list_notes_filter.dart';
import '../../features/news/domain/use_cases/get_top_headlines.dart';
import '../../features/auth/domain/use_cases/login.dart';
import '../../features/auth/domain/use_cases/logout.dart';
import '../../features/news/presentation/blocs/news/news_bloc.dart';
import '../../features/news/data/data_sources/news_network.dart';
import '../../features/news/data/data_sources/news_network_impl.dart';
import '../../features/news/domain/repositories/news_repo.dart';
import '../../features/news/data/repositories/news_repo_impl.dart';
import '../../features/notes/presentation/blocs/notes/notes_bloc.dart';
import '../../features/notes/data/data_sources/notes_dao.dart';
import '../../features/notes/data/data_sources/notes_dao_impl.dart';
import '../../features/notes/domain/repositories/notes_repo.dart';
import '../../features/notes/data/repositories/notes_repo_impl.dart';
import 'register_modules.dart';
import '../networks/connectivity_actions/request_retrier.dart';
import '../networks/interceptors/retry_on_connection_change_interceptor.dart';
import '../databases/sembast_db.dart';
import '../databases/sembast_io.dart';
import '../databases/sembast_web.dart';

/// Environment names
const _prod = 'prod';
const _dev = 'dev';
const _prod_web = 'prod_web';
const _dev_web = 'dev_web';

/// adds generated dependencies
/// to the provided [GetIt] instance

void $initGetIt(GetIt g, {String environment}) {
  final gh = GetItHelper(g, environment);
  final registerModules = _$RegisterModules();
  gh.lazySingleton<AuthLocal>(() => AuthLocalImpl());
  gh.lazySingleton<AuthRepo>(() => AuthRepoImpl(authLocal: g<AuthLocal>()));
  gh.lazySingleton<CheckIsLoggedIn>(
      () => CheckIsLoggedIn(authRepo: g<AuthRepo>()));
  gh.lazySingleton<Connectivity>(() => registerModules.connectivity);
  gh.lazySingleton<Dio>(() => registerModules.dio);
  gh.lazySingleton<Login>(() => Login(authRepo: g<AuthRepo>()));
  gh.lazySingleton<Logout>(() => Logout(authRepo: g<AuthRepo>()));
  gh.lazySingleton<NewsNetwork>(() => NewsNetworkImpl(dio: g<Dio>()));
  gh.lazySingleton<NewsRepo>(
      () => NewsRepoImpl(newsNetworkSource: g<NewsNetwork>()));
  gh.lazySingleton<RequestRetrier>(
      () => RequestRetrier(connectivity: g<Connectivity>(), dio: g<Dio>()));
  gh.lazySingleton<RetryOnConnectionChangeInterceptor>(() =>
      RetryOnConnectionChangeInterceptor(requestRetrier: g<RequestRetrier>()));
  gh.lazySingleton<SembastDB>(() => SembastIO(), registerFor: {_prod, _dev});
  gh.lazySingleton<SembastDB>(() => SembastWeb(),
      registerFor: {_prod_web, _dev_web});
  gh.factory<AuthBloc>(() => AuthBloc(
        checkIsLoggedIn: g<CheckIsLoggedIn>(),
        login: g<Login>(),
        logout: g<Logout>(),
      ));
  gh.lazySingleton<GetTopHeadlines>(
      () => GetTopHeadlines(newsRepo: g<NewsRepo>()));
  gh.factory<NewsBloc>(() => NewsBloc(getTopHeadlines: g<GetTopHeadlines>()));
  gh.lazySingleton<NotesDao>(() => NotesDaoImpl(sembastDB: g<SembastDB>()));
  gh.lazySingleton<NotesRepo>(() => NotesRepoImpl(localSource: g<NotesDao>()));
  gh.lazySingleton<AddNote>(() => AddNote(notesRepo: g<NotesRepo>()));
  gh.lazySingleton<CheckIsDone>(() => CheckIsDone(notesRepo: g<NotesRepo>()));
  gh.lazySingleton<DeleteNote>(() => DeleteNote(notesRepo: g<NotesRepo>()));
  gh.lazySingleton<GetListNotes>(() => GetListNotes(notesRepo: g<NotesRepo>()));
  gh.lazySingleton<GetListNotesFilter>(
      () => GetListNotesFilter(notesRepo: g<NotesRepo>()));
  gh.factory<NotesBloc>(() => NotesBloc(
        getListNotes: g<GetListNotes>(),
        getListNotesFilter: g<GetListNotesFilter>(),
        addNote: g<AddNote>(),
        deleteNote: g<DeleteNote>(),
        checkIsDone: g<CheckIsDone>(),
      ));
}

class _$RegisterModules extends RegisterModules {}
