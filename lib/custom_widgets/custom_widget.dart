import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../Utils/color_utils.dart';
import '../utils/size_utils.dart';

class CustomWidget {
  static Widget getDividerWithoutSpacing({
    Color? dividerColor,
    double? dividerSize,
    double? dividerThickness,
  }) {
    return Container(
      color: ColorUtils.dividerColor,
      height: 1.0,
    );
  }

  static Widget getDividerWithoutSpacingTemp({
    Color? dividerColor,
    double? dividerSize,
    double? dividerThickness,
  }) {
    return getDivider(
      dividerColor: dividerColor,
      spacing: 0,
      dividerSize: dividerSize,
      dividerThickness: dividerThickness,
    );
  }

  static Widget getDivider({
    Color? dividerColor,
    double? spacing,
    double? dividerSize,
    double? dividerThickness,
  }) {
    dividerColor ??= ColorUtils.dividerColor;
    spacing ??= SizeUtils.instance.appDefaultSpacingHalf;
    dividerSize ??= 5.0;
    dividerThickness ??= 1.0;
    return Column(
      children: <Widget>[
        SizedBox(
          height: spacing,
        ),
        Divider(
          height: dividerSize,
          thickness: dividerThickness,
          color: dividerColor,
        ),
        SizedBox(
          height: spacing,
        ),
      ],
    );
  }

  static Widget getDefaultWidthSizedBox({double? width}) {
    width ??= SizeUtils.instance.appDefaultSpacing;
    return SizedBox(
      width: width,
    );
  }

  static Widget getHalfWidthSizedBox({double? width}) {
    width ??= SizeUtils.instance.appDefaultSpacingHalf;
    return SizedBox(
      width: width,
    );
  }

  static Widget getDefaultHeightSizedBox({double? height}) {
    height ??= SizeUtils.instance.appDefaultSpacing;
    return SizedBox(
      height: height,
    );
  }

  static Widget getHalfHeightSizedBox({double? height}) {
    height ??= SizeUtils.instance.appDefaultSpacingHalf;
    return SizedBox(
      height: height,
    );
  }

  static Widget getSemiHalfHeightSizedBox({double? height}) {
    height ??= SizeUtils.instance.appDefaultSpacingSemiHalf;
    return SizedBox(
      height: height,
    );
  }

  static Widget pageBackButton(BuildContext context) {
    return SizedBox(
      height: SizeUtils.instance.appDefaultSpacing,
      width: SizeUtils.instance.appDefaultSpacing,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          color: ColorUtils.whiteColor,
        ),
      ),
    );
  }

  static Widget pageCloseButton(BuildContext context) {
    return SizedBox(
      height: SizeUtils.instance.appDefaultSpacing,
      width: SizeUtils.instance.appDefaultSpacing,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.clear,
          color: ColorUtils.textSubHeadingCharcoalBlackColor,
        ),
      ),
    );
  }
}
