import 'package:flutter_pattern_templates/core/failures/i_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_failures.freezed.dart';

@freezed
abstract class NewsFailures with _$NewsFailures implements IFailure {
  const factory NewsFailures.invalidPage() = _InvalidPage;
  const factory NewsFailures.unexpected() = _Unexpected;
}