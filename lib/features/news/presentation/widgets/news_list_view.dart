import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';

import '../../../../core/configs/app_settings.dart';
import '../../domain/entities/article.dart';
import 'loading_view_builder.dart';

class NewsListView extends HookWidget {
  const NewsListView({
    Key key,
    @required this.futureListArticles,
  }) : super(key: key);

  final Future<List<Article>> Function(int) futureListArticles;

  static const _padding = 20.0;

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
        padding: const EdgeInsets.all(_padding),
        pageLoadController: pagewiseController,
        showRetry: false,
        loadingBuilder: (context) {
          return LoadingViewBuilder(
            pagewiseController: pagewiseController,
            paddingValue: _padding,
          );
        },
        errorBuilder: (context, error) {
          return Column(
            children: <Widget>[
              Text("$error"),
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: pagewiseController.retry,
              ),
            ],
          );
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
