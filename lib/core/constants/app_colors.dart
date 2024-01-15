import 'package:flutter/material.dart';

///
abstract class AppColors {
  ///------------------------ Predefined colors--------------------
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color red = Colors.red;
  static const Color green = Colors.green;
  static const Color transparent = Colors.transparent;
  static const Color grey = Colors.grey;

  /// ---------------------Custom Colors-------------------------
  static const Color cPurple = Color(0xFF332749);
  static const Color blue = Color.fromARGB(255, 24, 31, 49);
  static const Color cPurple2 = Color(0xFF7F38FF);
  static final Color cPurple40 = const Color(0xFF332749).withOpacity(0.4);
  static const Color cLightPurple = Color(0xFFC4BAD8);
  static const Color cYellow = Color(0xFFFBEB5D);
  static final Color cBlack72 = black.withOpacity(0.72);
  static const Color cOffWhite = Color(0xFFF5F5F5);
  static const Color cOffWhite2 = Color(0xFFD9D9D9);
  static final Color cBlack82 = const Color(0xFF000000).withOpacity(0.82);
  static const Color cGreen = Color(0xFF2DB318);
}
