import '../../repositories/login_repository.dart';

/// A class contains static functions to validate user information.
class Validator {
  static bool isValidUserName(String username) =>
      username.length >= 5 && username.length <= 30;

  static bool isValidPassword(String password) =>
      LoginRepository.passwordRegExp.hasMatch(password);

  static bool isValidEmaill(String email) =>
      LoginRepository.emailRegExp.hasMatch(email);

  static bool isPasswordAndConfirmPassMatched(
          String password, String confirmPassword) =>
      password.compareTo(confirmPassword) == 0;
}
