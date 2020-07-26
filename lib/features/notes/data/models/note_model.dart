import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';
import 'package:meta/meta.dart';

class NoteModel {
  NoteModel({
    this.dbKey,
    @required this.body,
    @required this.isDone,
  });

  /// DON'T insert dbKey. Insert after this object created.
  factory NoteModel.fromDBMap(Map<String, dynamic> map) {
    return NoteModel(
      body: map['body'] as String,
      isDone: map['is_done'] as bool,
    );
  }

  factory NoteModel.fromDomain(Note note) {
    return NoteModel(
      dbKey: note.dbKey,
      body: note.body,
      isDone: note.isDone,
    );
  }

  // Id will be gotten from the database.
  // It's automatically generated & unique for every stored Fruit.
  int dbKey;

  final String body;

  final bool isDone;

  /// DON'T insert dbKey. It create it self.
  Map<String, dynamic> toDBMap() {
    return {
      'body': body,
      'is_done': isDone,
    };
  }

  Note toDomain() {
    return Note(
      dbKey: dbKey,
      body: body,
      isDone: isDone,
    );
  }
}
