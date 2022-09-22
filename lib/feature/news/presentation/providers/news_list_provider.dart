import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/abstracts/infinite_scroll_controller.dart';
import '../../../../core/abstracts/use_case.dart';
import '../../../../core/configs/app_configs.dart';
import '../../../../core/injections/configure_dependencies.dart';
import '../../domain/entities/article.dart';

final newsListProvider = Provider((ref) {
  return NewsListProvider(
    getListNews: getIt<UseCase<List<Article>, int>>(),
  );
});

class NewsListProvider extends InfiniteScrollController<Article> {
  NewsListProvider({
    required this.getListNews,
  });

  final UseCase<List<Article>, int> getListNews;

  @override
  Future<void> fetchPage(int pageIndex) async {
    final pageNo = getPageNo(pageIndex);
    final resultNewItems = await getListNews(pageNo);
    appendEitherListResult(
      resultNewItems: resultNewItems,
      pageIndex: pageIndex,
    );
  }

  @override
  int get pageSize => AppConfigs.pageSize;
}
