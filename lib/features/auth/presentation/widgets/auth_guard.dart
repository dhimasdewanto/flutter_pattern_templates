import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../core/injections/injection.dart';
import '../../../home/presentation/pages/home_page.dart';
import '../blocs/auth/auth_bloc.dart';
import '../pages/login_page.dart';

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
                Get.offAll(const HomePage());
              }
            },
            unauthenticated: () => Get.offAll(const LoginPage()),
          );
        },
        child: child,
      ),
    );
  }
}
