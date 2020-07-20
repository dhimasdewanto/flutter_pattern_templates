import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pattern_templates/core/injections/injection.dart';
import 'package:flutter_pattern_templates/features/news/presentation/widgets/news_view.dart';

import '../../presentation/blocs/news/news_bloc.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News"),
      ),
      body: BlocProvider<NewsBloc>(
        create: (context) => getIt<NewsBloc>()..add(const NewsEvent.load()),
        child: const NewsView(),
      ),
    );
  }
}
