import 'package:farmers_market_mobile_order/styles/colors.dart';
import 'package:farmers_market_mobile_order/styles/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'base.dart';

abstract class TextFieldStyles {
  static double textBoxHorizontal() => 25;
  static double textBoxVertical() => 8;
  static TextStyle get text => TextStyles.body;

  static TextStyle get placeholder => TextStyles.suggestion;
  static Color get cursorColor => AppColors.darkblue;
  static Widget iconPrefix(IconData icon) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Icon(
        icon,
        size: 35,
        color: AppColors.lightblue,
      ),
    );
  }

  static TextAlign get textAlign => TextAlign.center;

  static BoxDecoration get cupertinoDecoration {
    return BoxDecoration(
      border: Border.all(color: AppColors.straw, width: BaseStyles.borderWidth),
      borderRadius: BorderRadius.circular(BaseStyles.borderRadius),
    );
  }

  static InputDecoration materialDecoration(String hint, IconData icon) {
    return InputDecoration(
      contentPadding: EdgeInsets.all(8),
      hintText: hint,
      border: InputBorder.none,
      hintStyle: TextFieldStyles.placeholder,
      prefix: iconPrefix(icon),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: AppColors.straw, width: BaseStyles.borderWidth),
        borderRadius: BorderRadius.circular(BaseStyles.borderRadius),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: AppColors.straw, width: BaseStyles.borderWidth),
        borderRadius: BorderRadius.circular(BaseStyles.borderRadius),
      ),
    );
  }
}
