import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pattern_templates/core/injections/injection.dart';
import 'package:flutter_pattern_templates/core/translations/locale_keys.g.dart';
import 'package:flutter_pattern_templates/features/notes/presentation/blocs/notes/notes_bloc.dart';
import 'package:flutter_pattern_templates/features/notes/presentation/widgets/notes_view.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NotesBloc>()
        ..add(
          const NotesEvent.load(),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.notes.tr()),
        ),
        body: const NotesView(),
      ),
    );
  }
}
