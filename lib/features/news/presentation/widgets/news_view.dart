import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/blocs/news/news_bloc.dart';
import 'news_list_view.dart';

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
            return NewsListView(
              futureListArticles: futureListArticles,
            );
          },
        );
      },
    );
  }
}
