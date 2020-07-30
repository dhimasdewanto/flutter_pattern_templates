import 'package:get_storage/get_storage.dart';
import 'package:uuid/uuid.dart';

import '../models/note_model.dart';
import 'notes_dao.dart';

// @LazySingleton(as: NotesDao)
class NotesDaoGetx implements NotesDao {
  NotesDaoGetx() {
    _box.writeIfNull(_keyName, <Map<String, dynamic>>[]);
  }

  static const _boxName = "box_notes";
  static const _keyName = "notes";

  final _box = GetStorage(_boxName);

  @override
  Future<void> delete(NoteModel deletedNote) async {
    final listModels = await getAll();
    final index = listModels.indexWhere((model) => model.id == deletedNote.id);
    listModels.removeAt(index);
    final listMaps = listModels.map((e) => e.toMap()).toList();
    await _box.write(_keyName, listMaps);
  }

  @override
  Future<List<NoteModel>> getAll() async {
    final listMaps = _box.read<List>(_keyName);
    return listMaps.map((map) => NoteModel.fromMap(map as Map<String, dynamic>)).toList();
  }

  @override
  Future<List<NoteModel>> getFilter({bool isDone = false}) async {
    final listModels = await getAll();
    return listModels.where((model) => model.isDone == isDone).toList();
  }

  @override
  Future<void> insert(NoteModel newNote) async {
    newNote.id ??= Uuid().v4();

    final listAll = _box.read<List>(_keyName);
    await _box.write(_keyName, [...listAll, newNote.toMap()]);
  }

  @override
  Future<void> update(NoteModel updatedNote) async {
    final listModels = await getAll();
    final index = listModels.indexWhere((model) => model.id == updatedNote.id);
    listModels.replaceRange(index, index+1, [updatedNote]);
    final listMaps = listModels.map((e) => e.toMap()).toList();
    await _box.write(_keyName, listMaps);
  }
}