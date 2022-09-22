import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../core/abstracts/use_case.dart';
import '../../../../core/configs/app_configs.dart';
import '../../../../core/injections/configure_dependencies.dart';
import '../../domain/entities/article.dart';

class NewsListPage extends StatefulWidget {
  const NewsListPage({Key? key}) : super(key: key);

  @override
  State<NewsListPage> createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage> {
  late PagingController<int, Article> _pagingController;

  @override
  void initState() {
    super.initState();
    _pagingController = PagingController(firstPageKey: 1);
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  Future<void> _fetchPage(int pageKey) async {
    final pageNo = (pageKey ~/ AppConfigs.pageSize) + 1;

    final useCase = getIt<UseCase<List<Article>, int>>();
    final resNewItems = await useCase(pageNo);
    resNewItems.fold(
      (failure) {
        _pagingController.error = failure.message;
      },
      (newItems) {
        final isLastPage = newItems.length < AppConfigs.pageSize;
        if (isLastPage) {
          _pagingController.appendLastPage(newItems);
        } else {
          final nextPageKey = pageKey + newItems.length;
          _pagingController.appendPage(newItems, nextPageKey);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConfigs.appName),
      ),
      body: PagedListView(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<Article>(
          itemBuilder: (context, article, index) {
            return Card(
              child: ListTile(
                title: Text(article.title),
                subtitle: Text(article.description),
                onTap: () {
                  context.go(
                    "/news/detail",
                    extra: article,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
