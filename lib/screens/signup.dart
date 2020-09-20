import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
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
    return Center(
      child: Platform.isIOS
          ? CupertinoButton(
              child: Text('Login'),
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/login'),
            )
          : RaisedButton(
              child: Text('Login'),
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/login'),
            ),
    );
  }
}
