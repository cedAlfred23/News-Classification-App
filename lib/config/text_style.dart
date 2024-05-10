import 'package:flutter/material.dart';

class BTextStyle {
  static const String poppinsFontFamily = "Poppins";

  static const TextStyle titleText = TextStyle(
    fontFamily: poppinsFontFamily,
    color: Colors.black,
    fontSize: 28,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
  );

  static const TextStyle titleWhiteSemiBold = TextStyle(
    fontFamily: poppinsFontFamily,
    color: Colors.black,
    fontSize: 22,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.02,
  );

  static const TextStyle regularBlack = TextStyle(
    fontFamily: poppinsFontFamily,
    color:Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.02,
  );

  static const TextStyle regularWhite = TextStyle(
    fontFamily: poppinsFontFamily,
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.02,
  );

}