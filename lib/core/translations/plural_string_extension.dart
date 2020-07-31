part of 'lk.dart';

/// Add String extension to add plural translation.
extension PluralStringExtension on String {
  String plural(int number) {
    final str = this;
    switch (number) {
      case 0:
        return "${str}0".trArgs(["$number"]);
      case 1:
        return "${str}1".trArgs(["$number"]);
      default:
        return "${str}2".trArgs(["$number"]);
    }
  }
}