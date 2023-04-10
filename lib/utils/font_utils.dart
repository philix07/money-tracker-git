import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_tracker/utils/color_utils.dart';

class FontsUtil {
  static TextStyle getParagraphStyle(
      {double fontSize = 12.0,
      double letterSpacing = 1.5,
      fontWeight = FontWeight.normal}) {
    return GoogleFonts.commissioner(
      color: ColorsUtil.paragraph,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle getButtonStyle(
      {double fontSize = 12.0, double letterSpacing = 1.5}) {
    return GoogleFonts.commissioner(
      color: ColorsUtil.btnText,
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      letterSpacing: letterSpacing,
    );
  }
}
