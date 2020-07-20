part of 'news_bloc.dart';

@freezed
abstract class NewsState with _$NewsState {
  const factory NewsState.initial() = _InitialState;
  
  const factory NewsState.show({
    List<Article> listArticles,
  }) = _ShowState;

  const factory NewsState.error({
    @Default("") String message,
  }) = _ErrorState;
}
