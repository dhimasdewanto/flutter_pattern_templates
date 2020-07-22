import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/failures/i_failure.dart';

part 'notes_failures.freezed.dart';

@freezed
abstract class NotesFailures with _$NotesFailures implements IFailure {
  const factory NotesFailures.emptyBody() = _EmptyBody;
  const factory NotesFailures.unexpected() = _Unexpected;
}
