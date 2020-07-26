import 'package:dartz/dartz.dart';
import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';
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
    final correctValue = Note(body: "Something", isDone: false);

    when(mockRepo.addNote(correctValue)).thenAnswer((_) async => right(unit));

    final result = await useCase(correctValue);
    expect(result, right(unit));

    verify(mockRepo.addNote(correctValue));
    verifyNoMoreInteractions(mockRepo);
  });

  test("Should return failure because body is empty", () async {
    final correctValue = Note(body: "", isDone: false);

    when(mockRepo.addNote(correctValue)).thenAnswer((_) async => right(unit));

    final result = await useCase(correctValue);
    expect(result, left(const NotesFailures.emptyBody()));

    verifyNoMoreInteractions(mockRepo);
  });
}