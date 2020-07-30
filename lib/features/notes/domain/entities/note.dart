import 'package:meta/meta.dart';

class Note {
  Note({
    this.id,
    @required this.body,
    @required this.isDone,
  });

  String id;
  final String body;
  final bool isDone;
}
