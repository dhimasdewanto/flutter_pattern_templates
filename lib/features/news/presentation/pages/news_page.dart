import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/injections/injection.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../utils/presentation/widgets/my_app_bar.dart';
import '../../presentation/blocs/news/news_bloc.dart';
import '../widgets/news_view.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        textTitle: tr(LocaleKeys.news),
      ),
      body: BlocProvider<NewsBloc>(
        create: (context) => getIt<NewsBloc>()..add(const NewsEvent.load()),
        child: const NewsView(),
      ),
    );
  }
}
