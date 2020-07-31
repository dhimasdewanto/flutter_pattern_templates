abstract class AuthLocal {
  Future<bool> isLoggedIn();
  Future<void> login(String username);
  Future<void> logout();
}