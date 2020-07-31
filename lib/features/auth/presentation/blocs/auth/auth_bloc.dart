import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/use_cases/check_is_logged_in.dart';
import '../../../domain/use_cases/login.dart';
import '../../../domain/use_cases/logout.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    @required this.checkIsLoggedIn,
    @required this.login,
    @required this.logout,
  }) : super(const AuthState.unauthenticated());

  final CheckIsLoggedIn checkIsLoggedIn;
  final Login login;
  final Logout logout;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.when(
      login: (username) async* {
        final tryLogin = await login(username);
        if (tryLogin.isRight()) {
          yield const AuthState.loggedIn();
        }
      },
      logout: () async* {
        final tryLogout = await logout(unit);
        if (tryLogout.isRight()) {
          yield const AuthState.unauthenticated();
        }
      },
      checkIsLoggedIn: () async* {
        final tryIsLoggedIn = await checkIsLoggedIn(unit);
        yield* tryIsLoggedIn.fold(
          (failure) async* {
            yield const AuthState.unauthenticated();
          },
          (isLoggedIn) async* {
            yield isLoggedIn
                ? const AuthState.loggedIn()
                : const AuthState.unauthenticated();
          },
        );
      },
    );
  }
}
