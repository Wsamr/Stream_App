import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
class Appstring {
  TextStyle latoText({required Color color,required double size , required FontWeight fontWeight}) {
    return GoogleFonts.lato(
      textStyle: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}
