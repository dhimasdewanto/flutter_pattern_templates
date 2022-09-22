import 'package:fpdart/fpdart.dart';

import '../../../../core/abstracts/failure.dart';
import '../../../../core/abstracts/repo.dart';
import '../../../../core/abstracts/use_case.dart';
import '../../data/models/article_model.dart';
import '../../data/models/get_news_model.dart';
import '../entities/article.dart';

class GetListNews extends UseCase<List<Article>, int> {
  GetListNews({
    required this.repo,
  });

  final Repo<List<ArticleModel>, GetNewsModel> repo;

  @override
  Future<Either<Failure, List<Article>>> processCall(
    int params,
  ) async {
    final repoResult = await repo(
      GetNewsModel(
        page: params,
      ),
    );
    final result = repoResult.map((listModels) => listModels
        .map(
          (model) => Article(
            sourceId: model.source.id,
            sourceName: model.source.name,
            author: model.author,
            title: model.title,
            description: model.description,
            url: model.url,
            urlToImage: model.urlToImage,
            publishedAt: model.publishedAt,
            content: model.content,
          ),
        )
        .toList());
    return result;
  }
}
