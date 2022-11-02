import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../Utils/color_utils.dart';

class CustomText {
  static Text _getTextCommon(
    String text,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
    int? maxLines,
    TextStyle? textStyle,
    TextStyle? _customStyle,
  ) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLines,
      style: textStyle ?? _customStyle,
    );
  }

  /* Black color text method start ...*/
  static Text textBlackColorBold(
    BuildContext context,
    String text, {
    double? textSize,
    TextStyle? textStyle,
    Color? textColor,
    TextAlign? textAlign,
    int? maxLines,
    FontWeight? fontWeight,
    TextOverflow? textOverflow,
  }) {
    fontWeight ??= FontWeight.w600;

    var _customTextStyle = getBlackTextStyle()?.copyWith(
      fontSize: textSize,
      fontWeight: fontWeight,
      color: textColor,
    );

    return _getTextCommon(
      text,
      textAlign,
      textOverflow,
      maxLines,
      textStyle,
      _customTextStyle,
    );
  }

  static Text textBlackColorRegular(
    BuildContext context,
    String? text, {
    double? textSize,
    TextStyle? textStyle,
    Color? textColor,
    TextAlign? textAlign,
    int? maxLines,
    FontWeight? fontWeight,
    TextOverflow? textOverflow,
    double? height,
  }) {
    fontWeight ?? FontWeight.w300;

    var _customTextStyle = getBlackTextStyle()?.copyWith(
      fontSize: textSize,
      fontWeight: fontWeight,
      color: textColor,
      height: height,
    );

    return _getTextCommon(
      text!,
      textAlign,
      textOverflow,
      maxLines,
      textStyle,
      _customTextStyle,
    );
  }

  /* Light Black color text method start ...*/
  static Text textLightBlackColorBold(
    BuildContext context,
    String text, {
    double? textSize,
    TextStyle? textStyle,
    Color? textColor,
    TextAlign? textAlign,
    int? maxLines,
    FontWeight? fontWeight,
    TextOverflow? textOverflow,
  }) {
    textAlign ??= TextAlign.left;

    fontWeight ??= FontWeight.w600;

    var _customTextStyle = getLightBlackTextStyle()?.copyWith(
      fontSize: textSize,
      fontWeight: fontWeight,
      color: textColor,
    );
    return _getTextCommon(
      text,
      textAlign,
      textOverflow,
      maxLines,
      textStyle,
      _customTextStyle,
    );
  }

  static Text textLightBlackColorRegular(
    BuildContext context,
    String text, {
    double? textSize,
    TextStyle? textStyle,
    Color? textColor,
    TextAlign? textAlign,
    int? maxLines,
    FontWeight? fontWeight,
    TextOverflow? textOverflow,
  }) {
    textAlign ??= TextAlign.left;

    fontWeight ??= FontWeight.w300;

    var _customTextStyle = getLightBlackTextStyle()?.copyWith(
      fontSize: textSize,
      fontWeight: fontWeight,
      color: textColor,
    );
    return _getTextCommon(
      text,
      textAlign,
      textOverflow,
      maxLines,
      textStyle,
      _customTextStyle,
    );
  }

  /* Grey color text method start ...*/
  static Text textGreyColorBold(
    BuildContext context,
    String text, {
    double? textSize,
    TextStyle? textStyle,
    Color? textColor,
    TextAlign? textAlign,
    int? maxLines,
    FontWeight? fontWeight,
    TextOverflow? textOverflow,
  }) {
    textAlign ??= TextAlign.left;
    fontWeight ??= FontWeight.w600;

    var _customTextStyle = getGreyTextStyle()?.copyWith(
        fontSize: textSize, fontWeight: fontWeight, color: textColor);
    return _getTextCommon(
      text,
      textAlign,
      textOverflow,
      maxLines,
      textStyle,
      _customTextStyle,
    );
  }

  static Text textGreyColorRegular(
    BuildContext context,
    String? text, {
    double? textSize,
    TextStyle? textStyle,
    Color? textColor,
    TextAlign? textAlign,
    int? maxLines,
    FontWeight? fontWeight,
    TextOverflow? textOverflow,
    double? height,
  }) {
    textAlign ??= TextAlign.left;

    fontWeight ??= FontWeight.w300;

    var _customTextStyle = getGreyTextStyle()?.copyWith(
      fontSize: textSize,
      fontWeight: fontWeight,
      color: textColor,
      height: height,
    );
    return _getTextCommon(
      text!,
      textAlign,
      textOverflow,
      maxLines,
      textStyle,
      _customTextStyle,
    );
  }

  /* White color text method start ...*/
  static Text textWhiteColorBold(
    BuildContext context,
    String text, {
    double? textSize,
    TextStyle? textStyle,
    Color? textColor,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    FontWeight? fontWeight,
  }) {
    textAlign ??= TextAlign.left;
    fontWeight ??= FontWeight.w600;

    var _customTextStyle = getWhiteTextStyle()?.copyWith(
      fontSize: textSize,
      fontWeight: fontWeight,
      color: textColor,
    );
    return _getTextCommon(
      text,
      textAlign,
      textOverflow,
      maxLines,
      textStyle,
      _customTextStyle,
    );
  }

  static Text textWhiteColorRegular(
    BuildContext context,
    String text, {
    double? textSize,
    double? height,
    TextStyle? textStyle,
    Color? textColor,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? textOverflow,
    FontWeight? fontWeight,
  }) {
    textAlign ??= TextAlign.left;
    fontWeight ??= FontWeight.w300;

    var _customTextStyle = getWhiteTextStyle()?.copyWith(
      fontSize: textSize,
      fontWeight: fontWeight,
      color: textColor,
      height: height,
    );
    return _getTextCommon(
      text,
      textAlign,
      textOverflow,
      maxLines,
      textStyle,
      _customTextStyle,
    );
  }

  /* White color text method end ...*/

  /* Different text styles used according to color scheme...*/
  static TextStyle? getBlackTextStyle() => TextStyle(
        color: ColorUtils.textSubHeadingCharcoalBlackColor,
      );

  static TextStyle? getLightBlackTextStyle() => TextStyle(
        color: ColorUtils.lightBlackColor,
      );

  static TextStyle? getGreyTextStyle() => TextStyle(
        color: ColorUtils.greyTextColor,
      );

  static TextStyle? getWhiteTextStyle() => TextStyle(
        color: ColorUtils.whiteColor,
      );
}
