import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pattern_templates/core/routers/router.gr.dart';

import '../../../../core/injections/injection.dart';
import '../blocs/auth/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = getIt<AuthBloc>();

    return BlocProvider(
      create: (context) => authBloc,
      child: BlocListener<AuthBloc, AuthState>(
        cubit: authBloc,
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            loggedIn: () => ExtendedNavigator.of(context).popAndPush(
              Routes.homePage,
            ),
          );
        },
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Login",
                  style: Theme.of(context).textTheme.headline3,
                ),
                Container(
                  width: 300.0,
                  child: TextField(
                    controller: _textEditingController,
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    final text = _textEditingController.text;
                    if (text == null || text.isEmpty) {
                      return;
                    }
                    authBloc.add(AuthEvent.login(text));
                  },
                  child: const Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
