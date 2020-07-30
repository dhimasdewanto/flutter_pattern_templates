import 'package:dartz/dartz.dart';
import 'package:flutter_pattern_templates/features/notes/domain/failures/notes_failures.dart';
import 'package:flutter_pattern_templates/features/notes/domain/repositories/notes_repo.dart';
import 'package:flutter_pattern_templates/features/notes/domain/use_cases/add_note.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNotesRepo extends Mock implements NotesRepo {}

void main() {
  AddNote useCase;
  MockNotesRepo mockRepo;

  setUp(() {
    mockRepo = MockNotesRepo();
    useCase = AddNote(notesRepo: mockRepo);
  });

  test("Should return success or right", () async {
    const correctValue = "Something";

    when(mockRepo.addNote(any)).thenAnswer((_) async => right(unit));

    final result = await useCase(correctValue);
    expect(result, right(unit));

    verify(mockRepo.addNote(any));
    verifyNoMoreInteractions(mockRepo);
  });

  test("Should return failure because body is empty", () async {
    const failValue = "";

    when(mockRepo.addNote(any)).thenAnswer((_) async => right(unit));

    final result = await useCase(failValue);
    expect(result, left(const NotesFailures.emptyBody()));

    verifyNoMoreInteractions(mockRepo);
  });
}