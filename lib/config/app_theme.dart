import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.grey,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: GoogleFonts.poppins(
        color: textColorGrey,
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
      ),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colorBorder, width: 1),
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
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.poppins(
        fontSize: 18,
        color: textColorBlack,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.poppins(
        fontSize: 16,
        color: textColorBlack,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: GoogleFonts.poppins(
        fontSize: 14,
        color: textColorBlack,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
