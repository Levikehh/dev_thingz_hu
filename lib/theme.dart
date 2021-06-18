import 'package:dev_thingz_hu/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: bgColor,
    iconTheme: Theme.of(context).iconTheme.copyWith(color: textColor),
    textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: textColor),
    primaryColor: primaryColor,
    canvasColor: primaryColor,
  );
}

ThemeData darkTheme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: textColor,
    iconTheme: IconThemeData(color: bgColor),
    textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        .apply(bodyColor: bgColor),
    primaryColor: primaryColor,
    canvasColor: primaryColor,
  );
}
