import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';
import 'package:flutter_pattern_templates/features/notes/presentation/blocs/notes/notes_bloc.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: BlocConsumer<NotesBloc, NotesState>(
            listener: (context, state) {
              state.when(
                (listNotes) {},
                error: (message) {
                  final snackbar = SnackBar(content: Text(message));
                  Scaffold.of(context).showSnackBar(snackbar);
                },
              );
            },
            buildWhen: (previous, current) {
              return current.maybeWhen(
                (listNotes) => true,
                error: (message) => false,
                orElse: () => true,
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                (listNotes) {
                  return ListView.builder(
                    itemCount: listNotes.length,
                    itemBuilder: (context, index) {
                      final note = listNotes[index];
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
                orElse: () => const Offstage(),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
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
        ),
      ],
    );
  }
}
