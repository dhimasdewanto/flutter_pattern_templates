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
