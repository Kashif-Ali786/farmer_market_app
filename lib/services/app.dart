import 'dart:io';

import 'package:farmers_market_mobile_order/routes.dart';
import 'package:farmers_market_mobile_order/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp();
  }
}

class PlatformApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        home: Login(),
        onGenerateRoute: Routes.cupertinoPageRoute,
        theme: CupertinoThemeData(scaffoldBackgroundColor: Colors.white),
      );
    } else {
      return MaterialApp(
        home: Login(),
        onGenerateRoute: Routes.materialPageRoute,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      );
    }
  }
}
