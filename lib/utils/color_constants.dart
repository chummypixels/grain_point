import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color bluegray_50 = fromHex('#edf0f2');

  static Color bluegray_800_19 = fromHex('#19454559');

  static Color pink_600_85 = fromHex('#85de0080');

  static Color teal_100 = fromHex('#b3e0d1');

  static Color teal_300 = fromHex('#54b896');

  static Color teal_700 = fromHex('#128c63');

  static Color indigo_200_6c = fromHex('#6c9ea8d9');

  static Color teal_900 = fromHex('#004f2e');

  static Color indigo_50_87 = fromHex('#87e8ebf5');

  static Color deep_orange_A700 = fromHex('#e01a00');

  static Color pink_300 = fromHex('#f75c82');

  static Color teal_400_26 = fromHex('#2638a18c');

  static Color gray_600 = fromHex('#757575');

  static Color gray_601 = fromHex('#737373');

  static Color gray_400 = fromHex('#b0b0b0');

  static Color pink_50 = fromHex('#fae3f2');

  static Color pink_51 = fromHex('#ffe3e8');

  static Color bluegray_700_40 = fromHex('#40455963');

  static Color lime_700 = fromHex('#c29438');

  static Color amber_500 = fromHex('#ffc208');

  static Color gray_800 = fromHex('#424242');

  static Color lime_900 = fromHex('#b06b00');

  static Color deep_purple_900_85 = fromHex('#85301c91');

  static Color yellow_50 = fromHex('#fffce6');

  static Color gray_200 = fromHex('#ededed');

  static Color black_900_0d = fromHex('#0d000000');

  static Color bluegray_801 = fromHex('#38474f');

  static Color bluegray_800 = fromHex('#454559');

  static Color deep_purple_50 = fromHex('#ede8f5');

  static Color bluegray_600 = fromHex('#546e7a');

  static Color bluegray_400 = fromHex('#888888');

  static Color gray_900_1a = fromHex('#1a0f1729');

  static Color white_A700 = fromHex('#ffffff');

  static Color black_900_59 = fromHex('#59000000');

  static Color black_900_1a = fromHex('#1a000000');

  static Color bluegray_700_33 = fromHex('#33455963');

  static Color deep_purple_500 = fromHex('#663bb8');

  static Color indigo_A200 = fromHex('#5266e3');

  static Color gray_50 = fromHex('#fafafa');

  static Color deep_purple_300 = fromHex('#9475cc');

  static Color teal_400 = fromHex('#30a882');

  static Color white_A700_33 = fromHex('#33ffffff');

  static Color teal_600 = fromHex('#14996e');

  static Color black_900_66 = fromHex('#66000000');

  static Color black_900 = fromHex('#000000');

  static Color teal_800 = fromHex('#216659');

  static Color pink_A400 = fromHex('#de004a');

  static Color gray_900_40 = fromHex('#400f1729');

  static Color pink_400 = fromHex('#f23666');

  static Color amber_800 = fromHex('#ff8f00');

  static Color gray_700 = fromHex('#616161');

  static Color gray_500 = fromHex('#9e9e9e');

  static Color indigo_50 = fromHex('#e8ebf5');

  static Color lime_800 = fromHex('#ba8000');

  static Color gray_900 = fromHex('#0f1729');

  static Color indigo_51 = fromHex('#e0e6f0');

  static Color bluegray_100 = fromHex('#cfd9db');

  static Color teal_50 = fromHex('#e0f2ed');

  static Color pink_a400 = fromHex('#f20082');

  static Color gray_101 = fromHex('#f5f5f5');

  static Color gray_102 = fromHex('#f2faf7');

  static Color gray_100 = fromHex('#f5f7fa');

  static Color bluegray_900 = fromHex('#263338');

  static Color indigo_300 = fromHex('#7887cc');

  static Color bluegray_701 = fromHex('#455963');

  static Color bluegray_700 = fromHex('#297570');

  static Color orange_50 = fromHex('#fff7e0');

  static Color indigo_100 = fromHex('#c4c9e8');

  static Color orange_51 = fromHex('#f5eddb');

  static Color bluegray_500 = fromHex('#617d8c');

  static Color orange_50_87 = fromHex('#87fff7e0');

  static Color bluegray_300 = fromHex('#8fa3ad');

  static Color bluegray_700_1a = fromHex('#1a455963');

  static Color indigo_500 = fromHex('#4052b5');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
