import 'package:meta/meta.dart';

class Note {
  Note({
    this.id = 0, // TEMP
    @required this.body,
  });

  final int id;
  final String body;
}
