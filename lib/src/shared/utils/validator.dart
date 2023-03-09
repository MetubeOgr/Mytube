/// A class contains static functions to validate user information.
class Validator {
// A regular expression to validate email. A valid email includes:
// - Email address start with a character.
// - Include characters a-z, 0-9, and can contain underscore and dot.
// - The minimum and maximum lengths are 5 and 32, respectively.
// - A domain name can be one or two level.
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z.][a-zA-Z0-9_\.]{5,32}@[a-zA-Z]{2,}(\.[a-zA-Z]{2,4}){1,2}$',
  );

  static final RegExp _passwordRegExp = RegExp(
    r'^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[\W]).{8,}$',
  );

  static bool isValidUserName(String username) =>
      username.length >= 5 && username.length <= 30;

  static bool isValidPassword(String password) =>
      _passwordRegExp.hasMatch(password);

  static bool isValidEmaill(String email) => _emailRegExp.hasMatch(email);

  static bool isPasswordAndConfirmPassMatched(
          String password, String confirmPassword) =>
      password.compareTo(confirmPassword) == 0;
}
