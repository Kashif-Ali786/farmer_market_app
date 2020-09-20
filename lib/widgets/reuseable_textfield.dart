import 'package:farmers_market_mobile_order/styles/textfields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReuseableTextField extends StatelessWidget {
  final bool isIOS;
  final String hintText;
  final IconData materialIcon;
  final IconData cupertinoIcon;
  final TextInputType textInputType;
  final bool obscureText;

  const ReuseableTextField(
      {Key key,
      @required this.isIOS,
      @required this.hintText,
      @required this.materialIcon,
      @required this.cupertinoIcon,
      this.textInputType,
      this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isIOS) {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: TextFieldStyles.textBoxHorizontal(),
            vertical: TextFieldStyles.textBoxVertical()),
        child: CupertinoTextField(
          prefix: TextFieldStyles.iconPrefix(cupertinoIcon),
          placeholder: hintText,
          keyboardType: this.textInputType,
          style: TextFieldStyles.text,
          textAlign: TextFieldStyles.textAlign,
          placeholderStyle: TextFieldStyles.placeholder,
          cursorColor: TextFieldStyles.cursorColor,
          decoration: TextFieldStyles.cupertinoDecoration,
          obscureText: obscureText != null ? obscureText : false,
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: TextFieldStyles.textBoxHorizontal(),
            vertical: TextFieldStyles.textBoxVertical()),
        child: TextField(
          textAlign: TextFieldStyles.textAlign,
          keyboardType: this.textInputType,
          cursorColor: TextFieldStyles.cursorColor,
          style: TextFieldStyles.text,
          obscureText: obscureText != null ? obscureText : false,
          decoration:
              TextFieldStyles.materialDecoration(hintText, materialIcon),
        ),
      );
    }
  }
}
