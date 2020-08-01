import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/injections/injection.dart';
import '../../../utils/presentation/widgets/my_app_bar.dart';
import '../blocs/notes/notes_bloc.dart';
import '../widgets/notes_view.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final notesBloc = getIt<NotesBloc>();

    return BlocProvider(
      create: (context) => notesBloc
        ..add(
          const NotesEvent.load(),
        ),
      child: Scaffold(
        appBar: MyAppBar(
          textTitle: "Notes",
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: (value) {
                switch (value) {
                  case "isDone":
                    notesBloc.add(const NotesEvent.load(isDone: true));
                    break;
                  case "isNotDone":
                    notesBloc.add(const NotesEvent.load(isDone: false));
                    break;
                  default:
                    notesBloc.add(const NotesEvent.load());
                }
              },
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: "all",
                    child: Text("Show All"),
                  ),
                  const PopupMenuItem(
                    value: "isDone",
                    child: Text("Show is Done Only"),
                  ),
                  const PopupMenuItem(
                    value: "isNotDone",
                    child: Text("Show is Not Done Only"),
                  ),
                ];
              },
            ),
          ],
        ),
        body: const NotesView(),
      ),
    );
  }
}
