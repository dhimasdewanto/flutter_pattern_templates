part of 'news_bloc.dart';

@freezed
abstract class NewsState with _$NewsState {
  const factory NewsState.initial() = _InitialState;
  
  const factory NewsState.show({
    @required Future<List<Article>> Function(int) futureListArticles,
  }) = _ShowState;

  const factory NewsState.error({
    @Default("") String message,
  }) = _ErrorState;
}
