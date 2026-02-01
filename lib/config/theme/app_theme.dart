import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(),
    brightness: Brightness.light,
  );
  static final ThemeData dark = ThemeData(brightness: Brightness.dark);
}
