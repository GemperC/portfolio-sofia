import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sofia_portfolio/src/ui/pages/photography_page.dart';

abstract class AppTypography {
  static final homeHeader = GoogleFonts.robotoFlex(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w200,
  );
  static final homeFooter1 = GoogleFonts.robotoFlex(
    color: Colors.white,
    fontSize: 30,
    height: 1.2,
    fontWeight: FontWeight.w600,
    
);
  static final homeFooter2 = GoogleFonts.robotoCondensed(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w200,
      letterSpacing: 1.2);
  static final homeTile1 = GoogleFonts.robotoFlex(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w100,
    letterSpacing: 1.2,
  );
  static final homeTile2 = GoogleFonts.robotoCondensed(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.w100,
      letterSpacing: 1.2);

  static final socialMediaLine = GoogleFonts.robotoCondensed(
      color: Colors.white,
      fontSize: 8,
      fontWeight: FontWeight.w100,
      letterSpacing: 1.2);

  static final photographyImageText = GoogleFonts.robotoFlex(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w800,
  );
}
