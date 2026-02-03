import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(),
    colorScheme: const ColorScheme.light(
      primary: Color(0xff2D201C),
      onPrimary: Color(0xffFFFFFF),
    ),
  );
  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    textTheme: GoogleFonts.poppinsTextTheme(),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xffFFFFFF),
      onPrimary: Color(0xff2D201C),
    ),
  );
}