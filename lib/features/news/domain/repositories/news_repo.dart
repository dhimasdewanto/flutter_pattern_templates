import 'package:dartz/dartz.dart';
import 'package:flutter_pattern_templates/features/news/domain/entities/article.dart';
import 'package:flutter_pattern_templates/features/news/domain/failures/news_failures.dart';

abstract class NewsRepo {
  Future<Either<NewsFailures, List<Article>>> getTopHeadlines();
}