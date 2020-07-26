import 'package:meta/meta.dart';

class Note {
  Note({
    this.dbKey,
    @required this.body,
    @required this.isDone,
  });

  final int dbKey;
  final String body;
  final bool isDone;
}
