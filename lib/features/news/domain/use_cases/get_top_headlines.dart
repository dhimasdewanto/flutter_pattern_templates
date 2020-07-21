import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pattern_templates/core/use_cases/use_case.dart';
import 'package:flutter_pattern_templates/features/news/domain/entities/article.dart';
import 'package:flutter_pattern_templates/features/news/domain/failures/news_failures.dart';
import 'package:flutter_pattern_templates/features/news/domain/repositories/news_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetTopHeadlines
    extends UseCase<List<Article>, GetTopHeadlinesParams, NewsFailures> {
  GetTopHeadlines({
    @required this.newsRepo,
  });

  final NewsRepo newsRepo;

  @override
  Future<Either<NewsFailures, List<Article>>> execute(
    GetTopHeadlinesParams params,
  ) async {
    return newsRepo.getTopHeadlines(page: params.page);
  }

  @override
  Future<Either<NewsFailures, Unit>> validate(
    GetTopHeadlinesParams params,
  ) async {
    if (params.page < 1) {
      return left(const NewsFailures.invalidPage());
    }
    return right(unit);
  }
}

class GetTopHeadlinesParams {
  GetTopHeadlinesParams({
    @required this.page,
  });

  final int page;
}
