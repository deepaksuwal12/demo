import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

extension Space on int {
  Widget verticalSpace() {
    return SizedBox(
      height: toDouble(),
    );
  }

  Widget horizontalSpace() {
    return SizedBox(
      width: toDouble(),
    );
  }
}

extension CustomTextStyle on Text {
  Text bodyLarge() {
    return Text(
      data!,
      style: GoogleFonts.poppins(
        fontSize: 18,
        color: textColorBlack,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Text bodyMedium({
    Color fontColor = textColorBlack,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return Text(
      data!,
      style: GoogleFonts.poppins(
        fontSize: 16,
        color: fontColor,
        fontWeight: fontWeight,
      ),
    );
  }

  Text bodySmall() {
    return Text(
      data!,
      style: GoogleFonts.poppins(
        fontSize: 14,
        color: textColorBlack,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Text headline6() {
    return Text(
      data!,
      style: GoogleFonts.poppins(
        fontSize: 20,
        color: textColorBlack,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Text headline5() {
    return Text(
      data!,
      style: GoogleFonts.poppins(
        fontSize: 24,
        color: textColorBlack,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
