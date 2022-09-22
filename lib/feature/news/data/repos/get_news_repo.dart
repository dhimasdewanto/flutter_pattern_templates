import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/abstracts/failure.dart';
import '../../../../core/abstracts/repo.dart';
import '../../../../core/configs/app_configs.dart';
import '../models/article_model.dart';
import '../models/get_news_model.dart';

class GetNewsRepo extends Repo<List<ArticleModel>, GetNewsModel> {
  GetNewsRepo({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<Either<Failure, List<ArticleModel>>> processCall(
    GetNewsModel params,
  ) async {
    final queryParams = {
      "country": "id",
      "page": params.page,
      "pageSize": AppConfigs.pageSize,
    };

    final response = await dio.get(
      "/top-headlines",
      queryParameters: queryParams,
    );

    final data = response.data["articles"];
    final list = ArticleModel.fromList(data as List);
    return right(list);
  }
}
