import 'constants.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return Constants.empty;
    } else {
      return this!;
    }
  }
}

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return Constants.zero;
    } else {
      return this!;
    }
  }
}

extension NonNullListOfStrings on List<String>? {
  List<String> orEmpty() {
    if (this == null) {
      return Constants.emptyList;
    } else {
      return this!;
    }
  }
}

extension NonNullBool on bool? {
  bool orFalse() {
    if (this == null) {
      return false;
    } else {
      return this!;
    }
  }
}

extension NonNullDateTime on DateTime? {
  DateTime orNow() {
    if (this == null) {
      return DateTime.now();
    } else {
      return this!;
    }
  }
}
