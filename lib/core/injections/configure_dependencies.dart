import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../feature/news/data/models/article_model.dart';
import '../../feature/news/data/models/get_news_model.dart';
import '../../feature/news/data/repos/get_news_repo.dart';
import '../../feature/news/domain/entities/article.dart';
import '../../feature/news/domain/use_cases/get_list_news.dart';
import '../abstracts/repo.dart';
import '../abstracts/use_case.dart';
import '../configs/env.dart';
import '../networks/dio_setter.dart';

final getIt = GetIt.instance;

void configureDependencies(EnvString env) {
  getIt.registerLazySingleton<Dio>(() => initDio);
  getIt.registerLazySingleton<Repo<List<ArticleModel>, GetNewsModel>>(
      () => GetNewsRepo(dio: getIt<Dio>()));
  getIt.registerLazySingleton<UseCase<List<Article>, int>>(
      () => GetListNews(repo: getIt<Repo<List<ArticleModel>, GetNewsModel>>()));
}
