import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

import 'exception_utils.dart';

class ColorUtils {
  static final instance = ColorUtils();

  ColorUtils() {
    ExceptionUtils.instance.throwCanNotCreateObjectSingletonInstance();
  }

  ///Common colors
  static Color primaryColor = Color(UtilColors.hexToInt('4966FF'));

  static Color textHeadingBlackColor = Color(UtilColors.hexToInt('212529'));
  static Color darkBlackColor = Color(UtilColors.hexToInt('000000'));
  static Color textSubHeadingCharcoalBlackColor =
      Color(UtilColors.hexToInt('33330A'));
  static Color lightBlackColor = Color(UtilColors.hexToInt('4D4D0F'));

  static Color whiteColor = Color(UtilColors.hexToInt('FFFFFF'));

  static Color dividerColor = Color(UtilColors.hexToInt('E0E0E0'));

  static Color greyContainerBorderColor = Color(UtilColors.hexToInt('919AA9'));

  static Color greyButtonBackgroundColor = Color(UtilColors.hexToInt('EEF0F4'));
  static Color lightGreyBackgroundColor = Color(UtilColors.hexToInt('F6F6F6'));
  static Color darkGreyBackgroundColor = Color(UtilColors.hexToInt('D9D9D9'));

  static Color mediumGreyColor = Color(UtilColors.hexToInt('7E7E7E'));
  static Color greyTextColor = Color(UtilColors.hexToInt('777777'));
  static Color lightGreyTextColor = Color(UtilColors.hexToInt('667080'));
  static Color darkGreyTextColor = Color(UtilColors.hexToInt('2F2F2F'));
}

class UtilColors {
  static int hexToInt(String hex) {
    if (hex == null) {
      return -1;
    }

    if (hex.length == 6) {
      hex = 'FF$hex';
    }

    int val = 0;
    int len = hex.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = hex.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw const FormatException('Invalid hexadecimal value');
      }
    }
    return val;
  }

  static Color parseHexColor(String hexColorString) {
    hexColorString = hexColorString.toUpperCase().replaceAll("#", "");
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString;
    }
    int colorInt = int.parse(hexColorString, radix: 16);
    return Color(colorInt);
  }
}
