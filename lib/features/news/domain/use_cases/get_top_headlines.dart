import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pattern_templates/core/use_cases/use_case.dart';
import 'package:flutter_pattern_templates/features/news/domain/entities/article.dart';
import 'package:flutter_pattern_templates/features/news/domain/failures/news_failures.dart';
import 'package:flutter_pattern_templates/features/news/domain/repositories/news_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetTopHeadlines extends UseCase<List<Article>, Unit, NewsFailures> {
  GetTopHeadlines({@required this.newsRepo});

  final NewsRepo newsRepo;

  @override
  Future<Either<NewsFailures, List<Article>>> execute(Unit params) async {
    return newsRepo.getTopHeadlines();
  }

  @override
  Future<Either<NewsFailures, Unit>> validate(Unit params) async {
    return right(unit);
  }
}