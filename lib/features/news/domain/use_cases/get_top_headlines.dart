import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/use_cases/use_case.dart';
import '../entities/article.dart';
import '../failures/news_failures.dart';
import '../repositories/news_repo.dart';

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
