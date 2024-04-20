<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# Useful utility function & widgets

## Features

    There are number of Utils functions which you can Use.
    
    - SizeConstant Widget for empty height & width space
    - Parsing class for model parsing
    - Utils method
        - getMaskedString


## Usage

### for more info see example

```dart
Util.getMaskedString(string: "abcdefghijklmno", maskedLength: 5)  => *****fghijklmno
Util.getMaskedString(string: "abcdefghijklmno", maskAt: MaskAt.end, maskedLength: 5), => abcdefghij*****
Util.getMaskedString(string: "abcdefghijklmno", maskAt: MaskAt.middle, maskedLength: 5), => abcde*****klmno

SizeConstant.getHeightSpace(height: 10) // return empty widget having width 0px && height 10px
SizeConstant.getWidthSpace(width: 10) // return empty widget having width 10px && height 0px
```
