part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(String username) = _LoginEvent;
  const factory AuthEvent.logout() = _LogoutEvent;
  const factory AuthEvent.checkIsLoggedIn() = _CheckIsLoggedInEvent;
}
