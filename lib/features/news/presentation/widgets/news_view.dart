import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';

import '../../../../core/configs/app_settings.dart';
import '../../domain/entities/article.dart';
import '../../presentation/blocs/news/news_bloc.dart';

class NewsView extends StatelessWidget {
  const NewsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (contex, state) {
        return state.when(
          initial: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          error: (messages) {
            return Center(
              child: Text(messages),
            );
          },
          show: (futureListArticles) {
            return PagewiseListView<Article>(
              padding: const EdgeInsets.all(20.0),
              pageSize: AppSettings.pageSize,
              pageFuture: futureListArticles,
              itemBuilder: (context, article, index) {
                return ListTile(
                  title: Text(article.title),
                  subtitle: Text(article.description),
                );
              },
            );
          },
        );
      },
    );
  }
}
