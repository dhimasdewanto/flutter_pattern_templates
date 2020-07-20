import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/injections/injection.dart';
import '../../../../core/translations/locale_keys.g.dart';
import '../../../utils/presentation/widgets/my_app_bar.dart';
import '../blocs/notes/notes_bloc.dart';
import '../widgets/notes_view.dart';

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
        appBar: MyAppBar(
          textTitle: tr(LocaleKeys.notes),
        ),
        body: const NotesView(),
      ),
    );
  }
}
