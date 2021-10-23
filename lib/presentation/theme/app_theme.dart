import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucid_components/colors.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      brightness: Brightness.light,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: primaryLightColor,
      dividerColor: Colors.black26,
      iconTheme: const IconThemeData(color: Colors.black38),
      textTheme: TextTheme(
        headline1: GoogleFonts.montserrat().copyWith(
          fontSize: 25,
          fontWeight: FontWeight.w800,
          color: primaryDarkColor,
          height: 1.4,
        ),
        headline2: GoogleFonts.montserrat().copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: primaryDarkColor,
          height: 1.4,
        ),
        bodyText1: GoogleFonts.montserrat().copyWith(
          fontSize: 16,
          color: greyTextColor,
          height: 1.4,
        ),
        bodyText2: GoogleFonts.montserrat().copyWith(
          fontSize: 14,
          color: greyTextColor,
          height: 1.4,
        ),
        caption: GoogleFonts.montserrat().copyWith(
          fontSize: 12,
          color: greyTextColor,
          fontWeight: FontWeight.w400,
          height: 1.4,
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: primaryDarkColor,
      dividerColor: Colors.white24,
      cardColor: superLightGreyTextColor,
      iconTheme: const IconThemeData(color: Colors.white38),
      textTheme: TextTheme(
        headline1: GoogleFonts.montserrat().copyWith(
          fontSize: 25,
          fontWeight: FontWeight.w800,
          color: primaryLightColor,
          height: 1.4,
        ),
        headline2: GoogleFonts.montserrat().copyWith(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: primaryLightColor,
          height: 1.4,
        ),
        bodyText1: GoogleFonts.montserrat().copyWith(
          fontSize: 16,
          color: Colors.white70,
          height: 1.4,
        ),
        bodyText2: GoogleFonts.montserrat().copyWith(
          fontSize: 14,
          color: Colors.white70,
          height: 1.4,
        ),
        caption: GoogleFonts.montserrat().copyWith(
          fontSize: 12,
          color: Colors.white70,
          fontWeight: FontWeight.w400,
          height: 1.4,
        ),
      ),
    );
  }
}
