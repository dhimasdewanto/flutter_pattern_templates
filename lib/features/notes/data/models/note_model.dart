import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';
import 'package:meta/meta.dart';

class NoteModel {
  NoteModel({
    this.id,
    @required this.body,
  });

  /// DON'T insert id. Insert after this object created.
  factory NoteModel.fromDBMap(Map<String, dynamic> map) {
    return NoteModel(
      body: map['body'] as String,
    );
  }

  factory NoteModel.fromDomain(Note note) {
    return NoteModel(
      id: note.id,
      body: note.body,
    );
  }

  // Id will be gotten from the database.
  // It's automatically generated & unique for every stored Fruit.
  int id;

  final String body;

  /// DON'T insert id. It create it self.
  Map<String, dynamic> toDBMap() {
    return {
      'body': body,
    };
  }

  Note toDomain() {
    return Note(
      id: id,
      body: body,
    );
  }
}
