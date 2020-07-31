part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.loggedIn() = _LoggedInState;
  const factory AuthState.unauthenticated() = _UnauthenticatedState;
}

