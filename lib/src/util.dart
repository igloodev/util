class Util {
  static bool _isEven(int number) => number % 2 == 0;

  static String getMaskedString({required String str, int maskedLength = 4, String maskedChar = "*", MaskAt maskAt = MaskAt.start}) {
    switch (maskAt) {
      case MaskAt.start:
        return "${maskedChar * maskedLength}${str.substring(maskedLength)}";
      case MaskAt.middle:
        if (str.length > maskedLength) {
          if (_isEven(str.length)) {
            if (_isEven(maskedLength)) {
              final initialVisible = ((str.length / 2) - (maskedLength / 2)).toInt();
              return "${str.substring(0, initialVisible)}${maskedChar * maskedLength}${str.substring((initialVisible + maskedLength))}";
            } else {
              final initialVisible = ((str.length / 2) - (maskedLength ~/ 2)).toInt()  - 1;
              return "${str.substring(0, initialVisible)}${maskedChar * maskedLength}${str.substring((initialVisible + maskedLength))}";
            }
          } else {
            if (_isEven(maskedLength)) {
              final initialVisibleLength = ((str.length - maskedLength) ~/ 2);
              return "${str.substring(0, initialVisibleLength)}${maskedChar * maskedLength}${str.substring(str.length - (initialVisibleLength + maskedLength - (maskedLength - 2) - 1))}";
            } else {
              final visibleLength = (str.length - maskedLength) ~/ 2;
              return "${str.substring(0, visibleLength)}${maskedChar * maskedLength}${str.substring(str.length - visibleLength)}";
            }
          }
        } else {
          return maskedChar * maskedLength;
        }
      case MaskAt.end:
        final visibleText = str.length - maskedLength;
        return "${str.substring(0, visibleText)}${maskedChar * maskedLength}";
    }
  }
}

enum MaskAt { start, middle, end }
