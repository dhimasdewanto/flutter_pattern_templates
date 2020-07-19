import 'package:dartz/dartz.dart';
import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/repositories/notes_repo.dart';
import 'package:flutter_pattern_templates/features/notes/domain/use_cases/get_list_notes.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNotesRepo extends Mock implements NotesRepo {}

void main() {
  GetListNotes useCase;
  MockNotesRepo mockRepo;

  setUp(() {
    mockRepo = MockNotesRepo();
    useCase = GetListNotes(notesRepo: mockRepo);
  });

  test("Should return right of list notes", () async {
    final correctValue = <Note>[];

    when(mockRepo.getListNotes()).thenAnswer((_) async => right(correctValue));

    final result = await useCase(unit);
    expect(result, right(correctValue));

    verify(mockRepo.getListNotes());
    verifyNoMoreInteractions(mockRepo);
  });
}