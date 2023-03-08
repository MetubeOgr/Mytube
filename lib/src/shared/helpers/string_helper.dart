/// A class contains static functions to provide fast handling when working
/// with strings. Such as checking if a string is empty or null,...
class StringHelper {
  static bool isNullOrEmpty({String? str}) {
    return str == null || str.isEmpty;
  }

  static bool isNotNullOrEmpty({String? str}) => !isNullOrEmpty(str: str);
}
