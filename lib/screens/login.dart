import 'dart:io';

import 'package:farmers_market_mobile_order/styles/base.dart';
import 'package:farmers_market_mobile_order/styles/colors.dart';
import 'package:farmers_market_mobile_order/styles/textfields.dart';
import 'package:farmers_market_mobile_order/widgets/reuseable_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(
        child: _buildPageBody(context),
      );
    } else {
      return Scaffold(
        body: _buildPageBody(context),
      );
    }
  }

  _buildPageBody(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          height: h * .2,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/top_bg.png'),
            ),
          ),
        ),
        Container(
          height: h * .3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
        ),
        ReuseableTextField(
            isIOS: Platform.isIOS,
            hintText: 'Email',
            materialIcon: Icons.mail,
            cupertinoIcon: CupertinoIcons.mail_solid),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: TextFieldStyles.textBoxHorizontal(),
              vertical: TextFieldStyles.textBoxVertical()),
        )
      ],
    );
  }
}
