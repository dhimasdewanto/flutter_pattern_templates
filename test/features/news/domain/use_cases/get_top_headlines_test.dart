import 'package:dartz/dartz.dart';
import 'package:flutter_pattern_templates/features/news/domain/entities/article.dart';
import 'package:flutter_pattern_templates/features/news/domain/failures/news_failures.dart';
import 'package:flutter_pattern_templates/features/news/domain/repositories/news_repo.dart';
import 'package:flutter_pattern_templates/features/news/domain/use_cases/get_top_headlines.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNewsRepo extends Mock implements NewsRepo {}

void main() {
  GetTopHeadlines useCase;
  MockNewsRepo mockRepo;

  setUp(() {
    mockRepo = MockNewsRepo();
    useCase = GetTopHeadlines(newsRepo: mockRepo);
  });

  test("Should return success or right", () async {
    final params = GetTopHeadlinesParams(
      page: 1,
    );
    final success = <Article>[];

    when(mockRepo.getTopHeadlines(
      page: params.page,
    )).thenAnswer((_) async => right(success));

    final result = await useCase(params);
    expect(result, right(success));

    verify(mockRepo.getTopHeadlines(
      page: params.page,
    ));
    verifyNoMoreInteractions(mockRepo);
  });

  test("Should return failure because page < 1", () async {
    final params = GetTopHeadlinesParams(
      page: 0,
    );
    const failure = NewsFailures.invalidPage();

    when(mockRepo.getTopHeadlines(
      page: params.page,
    )).thenAnswer((_) async => right(any));

    final result = await useCase(params);
    expect(result, left(failure));

    verifyNoMoreInteractions(mockRepo);
  });
}
