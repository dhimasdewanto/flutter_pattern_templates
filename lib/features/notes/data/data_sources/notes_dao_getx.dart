import 'package:flutter_pattern_templates/features/notes/data/models/note_model.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';

import 'notes_dao.dart';

@LazySingleton(as: NotesDao)
class NotesDaoGetx implements NotesDao {
  NotesDaoGetx() {
    _box.writeIfNull(_keyName, <Map<String, dynamic>>[]);
  }

  static const _boxName = "box_notes";
  static const _keyName = "notes";

  final _box = GetStorage(_boxName);

  @override
  Future<void> delete(NoteModel deletedNote) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<NoteModel>> getAll() async {
    final listMaps = _box.read<List>(_keyName);
    return listMaps.map((map) => NoteModel.fromGetxMap(map as Map<String, dynamic>)).toList();
  }

  @override
  Future<List<NoteModel>> getFilter({bool isDone = false}) {
    // TODO: implement getFilter
    throw UnimplementedError();
  }

  @override
  Future<void> insert(NoteModel newNote) async {
    final listAll = _box.read<List>(_keyName);
    _box.write(_keyName, [...listAll, newNote.toGetxMap()]);
  }

  @override
  Future<void> update(NoteModel updatedNote) {
    // TODO: implement update
    throw UnimplementedError();
  }
}