import 'package:dartz/dartz.dart';
import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/repositories/notes_repo.dart';
import 'package:flutter_pattern_templates/features/notes/domain/use_cases/delete_note.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNotesRepo extends Mock implements NotesRepo {}

void main() {
  DeleteNote useCase;
  MockNotesRepo mockRepo;

  setUp(() {
    mockRepo = MockNotesRepo();
    useCase = DeleteNote(notesRepo: mockRepo);
  });

  test("Should return success or right", () async {
    final correctValue = Note(id: 2, body: "Something", isDone: false);

    when(mockRepo.deleteNote(correctValue)).thenAnswer((_) async => right(unit));

    final result = await useCase(correctValue);
    expect(result, right(unit));

    verify(mockRepo.deleteNote(correctValue));
    verifyNoMoreInteractions(mockRepo);
  });
}