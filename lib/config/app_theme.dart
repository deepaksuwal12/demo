import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,

    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(
          color: Color(0xFFBDBDBD),
          fontSize: 16.0,
          fontWeight: FontWeight.w400),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
      disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
    ),

    // scaffoldBackgroundColor: buttonBgColor,
    textTheme: const TextTheme(
      displayMedium: TextStyle(
        fontSize: 18,
        color: Colors.blue,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
