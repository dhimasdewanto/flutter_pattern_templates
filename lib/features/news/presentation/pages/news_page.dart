import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/injections/injection.dart';
import '../../../utils/presentation/widgets/my_app_bar.dart';
import '../../presentation/blocs/news/news_bloc.dart';
import '../widgets/news_view.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        textTitle: "News",
      ),
      body: BlocProvider<NewsBloc>(
        create: (context) => getIt<NewsBloc>()..add(const NewsEvent.load()),
        child: const NewsView(),
      ),
    );
  }
}
