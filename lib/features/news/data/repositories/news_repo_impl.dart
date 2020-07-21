import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:flutter_pattern_templates/features/news/data/data_sources/news_network.dart';
import 'package:flutter_pattern_templates/features/news/domain/entities/article.dart';
import 'package:flutter_pattern_templates/features/news/domain/failures/news_failures.dart';
import 'package:flutter_pattern_templates/features/news/domain/repositories/news_repo.dart';

@LazySingleton(as: NewsRepo)
class NewsRepoImpl implements NewsRepo {
  NewsRepoImpl({
    @required this.newsNetworkSource,
  });

  final NewsNetwork newsNetworkSource;

  @override
  Future<Either<NewsFailures, List<Article>>> getTopHeadlines({
    int page,
  }) async {
    try {
      final listModels = await newsNetworkSource.getTopHeadlines(page: page);
      final listArticles = listModels.map((model) => model.toDomain()).toList();
      return right(listArticles);
    } catch (e) {
      return left(const NewsFailures.unexpected());
    }
  }
}
