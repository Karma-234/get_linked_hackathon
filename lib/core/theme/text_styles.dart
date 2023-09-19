import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextstyles {
  static TextStyle clashDisplay({
    String fontFamily = 'Clash Display',
    double fontSize = 28,
    double textHeight = 32,
    double? letterSpacing,
    FontWeight weight = FontWeight.w700,
    Color textColor = Colors.white,
    TextOverflow? overflow,
    double? decorationThickness,
    TextDecoration? decoration,
    Color decorationColor = Colors.white,
    TextDecorationStyle? decorationStyle,
  }) =>
      TextStyle(
        fontFamily: fontFamily,
        letterSpacing: letterSpacing?.spMin,
        fontSize: fontSize.spMin,
        height: (textHeight / fontSize).spMin,
        fontWeight: weight,
        color: textColor,
        overflow: overflow,
        decoration: decoration,
        decorationThickness: decorationThickness,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
      );

  static TextStyle inter({
    double fontSize = 28,
    double textHeight = 32,
    double? decorationThickness,
    double? letterSpacing,
    FontWeight weight = FontWeight.w700,
    Color textColor = Colors.white,
    TextOverflow? overflow,
    TextDecoration? decoration,
    Color decorationColor = Colors.white,
    TextDecorationStyle? decorationStyle,
  }) =>
      GoogleFonts.inter(
        letterSpacing: letterSpacing?.spMin,
        fontSize: fontSize.spMin,
        height: (textHeight / fontSize).spMin,
        fontWeight: weight,
        color: textColor,
        decorationThickness: decorationThickness,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
      );

  static TextStyle montserrat({
    double fontSize = 28,
    double textHeight = 32,
    double? decorationThickness,
    double? letterSpacing,
    FontWeight weight = FontWeight.w700,
    Color textColor = Colors.white,
    TextOverflow? overflow,
    TextDecoration? decoration,
    Color decorationColor = Colors.white,
    TextDecorationStyle? decorationStyle,
  }) =>
      GoogleFonts.montserrat(
        letterSpacing: letterSpacing?.spMin,
        fontSize: fontSize.spMin,
        height: (textHeight / fontSize).spMin,
        fontWeight: weight,
        color: textColor,
        decorationThickness: decorationThickness,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
      );
}
