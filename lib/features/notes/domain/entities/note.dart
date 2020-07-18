import 'package:meta/meta.dart';

class Note {
  Note({
    @required this.body,
  });

  // Id will be gotten from the database.
  // It's automatically generated & unique for every stored Fruit.
  int id;

  final String body;

  Map<String, dynamic> toMap() {
    return {
      'body': body,
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      body: map['body'] as String,
    );
  }
}
