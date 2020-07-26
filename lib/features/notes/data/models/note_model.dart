import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';
import 'package:meta/meta.dart';

class NoteModel {
  NoteModel({
    this.id,
    @required this.body,
    @required this.isDone,
  });

  /// DON'T insert id. Insert after this object created.
  factory NoteModel.fromDBMap(Map<String, dynamic> map) {
    return NoteModel(
      body: map['body'] as String,
      isDone: map['is_done'] as bool,
    );
  }

  factory NoteModel.fromDomain(Note note) {
    return NoteModel(
      id: note.id,
      body: note.body,
      isDone: note.isDone,
    );
  }

  // Id will be gotten from the database.
  // It's automatically generated & unique for every stored Fruit.
  int id;

  final String body;

  final bool isDone;

  /// DON'T insert id. It create it self.
  Map<String, dynamic> toDBMap() {
    return {
      'body': body,
      'is_done': isDone,
    };
  }

  Note toDomain() {
    return Note(
      id: id,
      body: body,
      isDone: isDone,
    );
  }
}
