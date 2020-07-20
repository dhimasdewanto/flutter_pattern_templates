import 'package:flutter_pattern_templates/features/news/data/models/article_model.dart';

abstract class NewsNetworkSource {
  Future<List<ArticleModel>> getTopHeadlines();
}