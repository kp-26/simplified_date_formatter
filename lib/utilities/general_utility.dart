import 'package:flutter/material.dart';
import 'managers/font_enum.dart';
import 'extensions/common_extensions.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class GeneralUtility {

  static GeneralUtility? _instance;
  GeneralUtility._internal() {
    _instance = this;
  }

  static GeneralUtility get shared => _instance ?? GeneralUtility._internal();

}

extension ExtGeneralUtility1 on GeneralUtility {

  showSnackBar(String message) {
    if (navigatorKey.currentContext == null) {
      return;
    }
    ScaffoldMessenger.of(navigatorKey.currentContext!).removeCurrentSnackBar();
    final snackBar = SnackBar(
      content: Text(message),
    );
    ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(snackBar);
  }

}

extension ExtGeneralUtility2 on GeneralUtility {

  getTextStyle({MyFont myFont = MyFont.regular, Color? color, Color? bgColor, double fontSize = 15}) {
    return TextStyle(
        fontFamily: myFont.family,
        fontWeight: myFont.weight,
        color: color,
        backgroundColor: bgColor,
        fontSize: fontSize
    );
  }

}