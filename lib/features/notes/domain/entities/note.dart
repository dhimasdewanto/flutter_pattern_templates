import 'package:meta/meta.dart';

class Note {
  Note({
    @required this.id,
    @required this.body,
    @required this.isDone,
  });

  final String id;
  final String body;
  final bool isDone;
}
