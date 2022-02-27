import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {


static Text getText({double fontsize = 11, FontWeight weight = FontWeight.w500, String text = '', Color color = Colors.white, TextAlign? alignment}){

  return Text(text, style: GoogleFonts.manrope(fontSize: fontsize, fontWeight: weight, color: color), textAlign: alignment,);
}

}