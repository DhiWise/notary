import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black90087 = fromHex('#87000000');

  static Color gray9000c = fromHex('#0c120e41');

  static Color black9007e = fromHex('#7e000000');

  static Color black900 = fromHex('#000000');

  static Color lightBlueA400 = fromHex('#00b2ff');

  static Color bluegray400 = fromHex('#888888');

  static Color gray90033 = fromHex('#33001924');

  static Color black90019 = fromHex('#19000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
