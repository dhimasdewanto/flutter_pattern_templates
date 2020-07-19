import 'package:flutter_pattern_templates/core/failures/i_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes_failures.freezed.dart';

@freezed
abstract class NotesFailures with _$NotesFailures implements IFailure {
  const factory NotesFailures.unexpected() = _Unexpected;
}