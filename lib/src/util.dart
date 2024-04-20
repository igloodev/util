class Util {
  static bool _isEven(int number) => number % 2 == 0;

  static String getMaskedString({required String string, int maskedLength = 4, String maskedChar = "*", MaskAt maskAt = MaskAt.start}) {
    switch (maskAt) {
      case MaskAt.start:
        return "${maskedChar * maskedLength}${string.substring(maskedLength)}";
      case MaskAt.middle:
        if (string.length > maskedLength) {
          if (_isEven(string.length)) {
            if (_isEven(maskedLength)) {
              final initialVisible = ((string.length / 2) - (maskedLength / 2)).toInt();
              return "${string.substring(0, initialVisible)}${maskedChar * maskedLength}${string.substring((initialVisible + maskedLength))}";
            } else {
              final initialVisible = ((string.length / 2) - (maskedLength ~/ 2)).toInt()  - 1;
              return "${string.substring(0, initialVisible)}${maskedChar * maskedLength}${string.substring((initialVisible + maskedLength))}";
            }
          } else {
            if (_isEven(maskedLength)) {
              final initialVisibleLength = ((string.length - maskedLength) ~/ 2);
              return "${string.substring(0, initialVisibleLength)}${maskedChar * maskedLength}${string.substring(string.length - (initialVisibleLength + maskedLength - (maskedLength - 2) - 1))}";
            } else {
              final visibleLength = (string.length - maskedLength) ~/ 2;
              return "${string.substring(0, visibleLength)}${maskedChar * maskedLength}${string.substring(string.length - visibleLength)}";
            }
          }
        } else {
          return maskedChar * maskedLength;
        }
      case MaskAt.end:
        final visibleText = string.length - maskedLength;
        return "${string.substring(0, visibleText)}${maskedChar * maskedLength}";
    }
  }
}

enum MaskAt { start, middle, end }
