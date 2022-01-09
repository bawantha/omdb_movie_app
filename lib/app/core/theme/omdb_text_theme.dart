import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OmdbTextTheme {
  static String primaryFontFamily = 'Lexend Deca';

  static TextStyle get title1 => GoogleFonts.getFont(
    primaryFontFamily,
    color: Color(0xFF303030),
    fontWeight: FontWeight.w600,
    fontSize: 25.sp,
  );
  static TextStyle get title2 => GoogleFonts.getFont(
    primaryFontFamily,
    color: Color(0xFF303030),
    fontWeight: FontWeight.w500,
    fontSize: 22.sp,
  );
  static TextStyle get title3 => GoogleFonts.getFont(
    primaryFontFamily,
    color: Color(0xFF303030),
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
  );
  static TextStyle get title4 => GoogleFonts.getFont(
    primaryFontFamily,
    color: Color(0xFF303030),
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
  );
  static TextStyle get subtitle1 => GoogleFonts.getFont(
    primaryFontFamily,
    color: Color(0xFF757575),
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
  );
  static TextStyle get subtitle2 => GoogleFonts.getFont(
    primaryFontFamily,
    color: Color(0xFF616161),
    fontWeight: FontWeight.normal,
    fontSize: 16.sp,
  );
  static TextStyle get bodyText1 => GoogleFonts.getFont(
    primaryFontFamily,
    color: Color(0xFF303030),
    fontWeight: FontWeight.normal,
    fontSize: 14.sp,
  );
  static TextStyle get bodyText2 => GoogleFonts.getFont(
    primaryFontFamily,
    color: Color(0xFF424242),
    fontWeight: FontWeight.normal,
    fontSize: 14.sp,
  );
  static TextStyle get bodyTextTheme => GoogleFonts.getFont(
    primaryFontFamily,
    color: Colors.teal,
    fontWeight: FontWeight.bold,
    fontSize: 14.sp,
  );
}

/// Extension method to extend features of TextStyle
extension TextStyleHelper on TextStyle {
  TextStyle override(
      {required String fontFamily,
        Color? color,
        double? fontSize,
        FontWeight? fontWeight,
        FontStyle? fontStyle}) =>
      GoogleFonts.getFont(
        fontFamily,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight ?? this.fontWeight,
        fontStyle: fontStyle ?? this.fontStyle,
      );
}
