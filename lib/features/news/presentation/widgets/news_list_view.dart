import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';

import '../../../../core/configs/app_settings.dart';
import '../../domain/entities/article.dart';

class NewsListView extends HookWidget {
  const NewsListView({
    Key key,
    @required this.futureListArticles,
  }) : super(key: key);

  final Future<List<Article>> Function(int) futureListArticles;

  @override
  Widget build(BuildContext context) {
    final pagewiseController = useMemoized(
      () => PagewiseLoadController(
        pageFuture: futureListArticles,
        pageSize: AppSettings.pageSize,
      ),
    );

    return RefreshIndicator(
      onRefresh: () async {
        pagewiseController.reset();
      },
      child: PagewiseListView<Article>(
        padding: const EdgeInsets.all(20.0),
        pageLoadController: pagewiseController,
        showRetry: false,
        errorBuilder: (context, error) {
          return Text("$error");
        },
        itemBuilder: (context, article, index) {
          return ListTile(
            title: Text(article.title),
            subtitle: Text(article.description),
          );
        },
      ),
    );
  }
}
