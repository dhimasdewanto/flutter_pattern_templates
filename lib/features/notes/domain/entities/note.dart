import 'package:meta/meta.dart';

class Note {
  Note({
    this.id = 0, // TEMP
    @required this.body,
    @required this.isDone,
  });

  final int id;
  final String body;
  final bool isDone;
}
