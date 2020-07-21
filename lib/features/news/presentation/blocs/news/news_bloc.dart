import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/article.dart';
import '../../../domain/use_cases/get_top_headlines.dart';

part 'news_bloc.freezed.dart';
part 'news_event.dart';
part 'news_state.dart';

@injectable
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc({
    @required this.getTopHeadlines,
  }) : super(const NewsState.initial());

  final GetTopHeadlines getTopHeadlines;

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    yield NewsState.show(
      futureListArticles: _futureListArticles,
    );
  }

  Future<List<Article>> _futureListArticles(int page) async {
    final result = await getTopHeadlines(
      GetTopHeadlinesParams(
        page: page + 1,
      ),
    );

    return result.fold(
      (failure) => failure.when(
        invalidPage: () => throw "Invalid Page",
        unexpected: () => throw "Unexpected Error",
      ),
      (listArticles) => listArticles,
    );
  }
}
