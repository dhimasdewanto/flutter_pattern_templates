import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pattern_templates/core/routers/router.gr.dart';

import '../../../../core/injections/injection.dart';
import '../blocs/auth/auth_bloc.dart';

class AuthGuard extends StatelessWidget {
  const AuthGuard({
    Key key,
    this.child,
    this.isRedirectToHome = false,
  }) : super(key: key);

  final Widget child;
  final bool isRedirectToHome;

  @override
  Widget build(BuildContext context) {
    final authBloc = getIt<AuthBloc>()
      ..add(
        const AuthEvent.checkIsLoggedIn(),
      );

    return BlocProvider(
      create: (context) => authBloc,
      child: BlocListener<AuthBloc, AuthState>(
        cubit: authBloc,
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {
              if (isRedirectToHome) {
                ExtendedNavigator.of(context).popAndPush(
                  Routes.homePage,
                );
              }
            },
            unauthenticated: () {
              ExtendedNavigator.of(context).popAndPush(
                Routes.loginPage,
              );
            },
          );
        },
        child: child,
      ),
    );
  }
}
