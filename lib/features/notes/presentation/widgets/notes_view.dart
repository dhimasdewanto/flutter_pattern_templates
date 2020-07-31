import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../core/translations/lk.dart';
import '../../domain/entities/note.dart';
import '../blocs/notes/notes_bloc.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: BlocConsumer<NotesBloc, NotesState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                error: (message) {
                  final snackbar = SnackBar(content: Text(message));
                  Scaffold.of(context).showSnackBar(snackbar);
                },
              );
            },
            buildWhen: (previous, current) {
              return current.maybeWhen(
                orElse: () => true,
                error: (message) => false,
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const Offstage(),
                show: (listNotes) {
                  return ListView.builder(
                    itemCount: listNotes.length,
                    itemBuilder: (context, index) {
                      final note = listNotes[index];
                      return ListTile(
                        title: Text(note.body),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Checkbox(
                              value: note.isDone,
                              onChanged: (value) {
                                context.bloc<NotesBloc>().add(
                                      NotesEvent.checkIsDone(
                                        note: Note(
                                          id: note.id,
                                          body: note.body,
                                          isDone: value,
                                        ),
                                      ),
                                    );
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                context.bloc<NotesBloc>().add(
                                      NotesEvent.remove(
                                        note: note,
                                      ),
                                    );
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: Lk.body.tr,
            ),
            onSubmitted: (value) {
              context.bloc<NotesBloc>().add(
                    NotesEvent.insert(
                      body: value,
                    ),
                  );
            },
          ),
        ),
      ],
    );
  }
}
