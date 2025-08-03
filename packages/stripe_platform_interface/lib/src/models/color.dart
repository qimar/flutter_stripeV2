import 'package:flutter/painting.dart';

/// Deserialization object for colors.
///
/// This object is used to translate Flutter color objects to hex strings used by the stripe sdk.
class ColorKey {
  const ColorKey();

  static String? toJson(Color? color) {
    if (color != null) {
      return '#${color.colorHexString.toUpperCase()}';
    }
    return null;
  }

  static Color? fromJson(value) {
    throw UnimplementedError();
  }
}

extension ColorX on Color {
String toHexString(Color color) {
  final red = color.red.toRadixString(16).padLeft(2, '0');
  final green = color.green.toRadixString(16).padLeft(2, '0');
  final blue = color.blue.toRadixString(16).padLeft(2, '0');
  final alpha = color.alpha.toRadixString(16).padLeft(2, '0');
  return '#$red$green$blue$alpha';
}
  String get colorHexString => toHexString(this);
}