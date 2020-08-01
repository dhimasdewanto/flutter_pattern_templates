import 'package:flutter/material.dart';

import '../../domain/entities/article.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({
    Key key,
    @required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: ListView(
        children: [
          Text(
            article.description,
            style: Theme.of(context).textTheme.headline5,
          ),
          Text(article.author),
          Text(article.content),
        ],
      ),
    );
  }
}
