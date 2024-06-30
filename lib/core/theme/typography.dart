import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTypography {
  static final homeHeader = GoogleFonts.robotoFlex(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.w200,
  );
  static final homeFooter1 = GoogleFonts.robotoFlex(
    color: Colors.white,
    fontSize: 34,
    fontWeight: FontWeight.w600,
  );
  static final homeFooter2 = GoogleFonts.robotoCondensed(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w200,
      letterSpacing: 1.2);
  static final homeTile1 = GoogleFonts.robotoFlex(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w100,
    letterSpacing: 1.2,
  );
  static final homeTile2 = GoogleFonts.robotoCondensed(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.w100,
      letterSpacing: 1.2);
}
