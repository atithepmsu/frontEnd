import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray5001 = fromHex('#f8f9fa');

  static Color red700 = fromHex('#d03329');

  static Color blueA700 = fromHex('#0061ff');

  static Color green600 = fromHex('#349765');

  static Color gray50 = fromHex('#f9fbff');

  static Color black900 = fromHex('#000000');

  static Color gray50001 = fromHex('#a6a6a6');

  static Color blueGray800 = fromHex('#37334d');

  static Color blueGray700 = fromHex('#424c5d');

  static Color blueGray900 = fromHex('#262b35');

  static Color gray70011 = fromHex('#11555555');

  static Color blueGray200 = fromHex('#bac1ce');

  static Color gray500 = fromHex('#9e9e9e');

  static Color blueGray100 = fromHex('#d6dae2');

  static Color blueGray400 = fromHex('#74839d');

  static Color orangeA700 = fromHex('#ff6700');

  static Color gray800 = fromHex('#424242');

  static Color blueGray600 = fromHex('#5f6c86');

  static Color gray200 = fromHex('#ececec');

  static Color black9000c = fromHex('#0c000000');

  static Color blue50 = fromHex('#e0ebff');

  static Color deepPurple50 = fromHex('#ebe8f1');

  static Color indigo900 = fromHex('#002055');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
