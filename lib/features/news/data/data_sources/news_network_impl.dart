import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/configs/app_settings.dart';
import '../models/article_model.dart';
import 'news_network.dart';

@LazySingleton(as: NewsNetwork)
class NewsNetworkImpl implements NewsNetwork {
  NewsNetworkImpl({
    @required this.dio,
  });

  final Dio dio;

  @override
  Future<List<ArticleModel>> getTopHeadlines({
    int page = 1,
  }) async {
    final params = {
      "country": "id",
      "page": page,
      "pageSize": AppSettings.pageSize,
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
