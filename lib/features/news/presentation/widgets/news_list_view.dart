import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';

import '../../../../core/configs/app_settings.dart';
import '../../../utils/presentation/page_routes/shared_axis_page_route.dart';
import '../../domain/entities/article.dart';
import '../pages/news_detail_page.dart';
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
          if (index % 2 == 0) {
            // Material Design Container Transition.
            return OpenContainer(
              closedElevation: 0.0,
              closedBuilder: (context, action) {
                return Card(
                  child: ListTile(
                    title: Text(article.title),
                    subtitle: Text(article.description),
                  ),
                );
              },
              openBuilder: (context, action) {
                return NewsDetailPage(article: article);
              },
            );
          }

          // Material Design Shared Axis Transition.
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  SharedAxisPageRoute(
                    transitionType: SharedAxisTransitionType.scaled,
                    page: NewsDetailPage(
                      article: article,
                    ),
                  ),
                );
              },
              child: ListTile(
                title: Text(article.title),
                subtitle: Text(article.description),
              ),
            ),
          );
        },
      ),
    );
  }
}
