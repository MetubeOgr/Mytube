/// A class contains static functions to provide fast handle when working with
/// collections, lists, etc.
class IterableHelper {
  static bool isNullOrEmpty({Iterable? iterable}) {
    return iterable == null || iterable.isEmpty;
  }

  static bool isNotNullAndEmpty({Iterable? iterable}) {
    return !isNullOrEmpty(iterable: iterable);
  }
}
