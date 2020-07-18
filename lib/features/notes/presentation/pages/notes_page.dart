import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pattern_templates/core/translations/locale_keys.g.dart';
import 'package:flutter_pattern_templates/features/notes/data/repositories/notes_repo_data.dart';
import 'package:flutter_pattern_templates/features/notes/presentation/blocs/notes/notes_bloc.dart';
import 'package:flutter_pattern_templates/features/utils/data/databases/sembast_db.dart';

import '../../domain/entities/note.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesBloc(
        notesRepo: NotesRepoData(
          sembastDB: SembastDB(),
        ),
      )..add(const NotesEvent.load()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.notes.tr()),
        ),
        body: Builder(
          builder: (context) {
            return Column(
              children: <Widget>[
                Expanded(
                  child: BlocBuilder<NotesBloc, NotesState>(
                    builder: (context, state) {
                      return ListView.builder(
                        itemCount: state.listNotes.length,
                        itemBuilder: (context, index) {
                          final note = state.listNotes[index];
                          return ListTile(
                            title: Text(note.body),
                            trailing: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                context.bloc<NotesBloc>().add(
                                      NotesEvent.remove(
                                        note: note,
                                      ),
                                    );
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: "Body",
                  ),
                  onSubmitted: (value) {
                    context.bloc<NotesBloc>().add(
                          NotesEvent.insert(
                            note: Note(
                              body: value,
                            ),
                          ),
                        );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
