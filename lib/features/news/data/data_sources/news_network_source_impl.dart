import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:flutter_pattern_templates/features/news/data/models/article_model.dart';
import 'package:injectable/injectable.dart';

import 'news_network_source.dart';

@LazySingleton(as: NewsNetworkSource)
class NewsNetworkSourceImpl implements NewsNetworkSource {
  NewsNetworkSourceImpl({
    @required this.dio,
  });

  final Dio dio;

  @override
  Future<List<ArticleModel>> getTopHeadlines() async {
    final params = {
      "country": "id",
    };
    final response = await dio.get(
      "/top-headlines",
      queryParameters: params,
    );

    final data = response.data["articles"];
    return _convertListMapToListModel(data as List);
  }

  List<ArticleModel> _convertListMapToListModel(List listMap) {
    return listMap
        .map((map) => ArticleModel.fromJson(map as Map<String, dynamic>))
        .toList();
  }
}
