import 'package:flutter_pattern_templates/features/news/data/models/article_model.dart';

abstract class NewsNetwork {
  Future<List<ArticleModel>> getTopHeadlines({
    int page = 1,
  });
}