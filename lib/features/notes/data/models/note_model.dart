import 'package:meta/meta.dart';

import '../../domain/entities/note.dart';

class NoteModel {
  NoteModel({
    @required this.id,
    @required this.body,
    @required this.isDone,
  });

  factory NoteModel.fromMap(Map<String, dynamic> map) {
    return NoteModel(
      id: map['id'] as String,
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

  final String id;
  final String body;
  final bool isDone;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
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

// class NoteModel {
//   NoteModel({
//     this.dbKey,
//     @required this.body,
//     @required this.isDone,
//   });

//   /// DON'T insert dbKey. Insert after this object created.
//   factory NoteModel.fromDBMap(Map<String, dynamic> map) {
//     return NoteModel(
//       body: map['body'] as String,
//       isDone: map['is_done'] as bool,
//     );
//   }

//   factory NoteModel.fromGetxMap(Map<String, dynamic> map) {
//     final note = NoteModel(
//       body: map['body'] as String,
//       isDone: map['is_done'] as bool,
//     );
//     note.dbKey = map['db_key'] as int;
//     return note;
//   }

//   factory NoteModel.fromDomain(Note note) {
//     return NoteModel(
//       dbKey: note.dbKey,
//       body: note.body,
//       isDone: note.isDone,
//     );
//   }

//   // Id will be gotten from the database.
//   // It's automatically generated & unique for every stored Fruit.
//   int dbKey;

//   final String body;

//   final bool isDone;

//   /// DON'T insert dbKey. It create it self.
//   Map<String, dynamic> toDBMap() {
//     return {
//       'body': body,
//       'is_done': isDone,
//     };
//   }

//   /// DBKey is Random Number.
//   Map<String, dynamic> toGetxMap() {
//     return {
//       'db_key': Random().nextInt(1000),
//       'body': body,
//       'is_done': isDone,
//     };
//   }

//   Note toDomain() {
//     return Note(
//       dbKey: dbKey,
//       body: body,
//       isDone: isDone,
//     );
//   }
// }
