import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:telit_solutions/resource/colors.dart';

class TxtStyle {
  static TextStyle boldBlack(context) => const TextStyle(color: Colors.black, fontWeight: FontWeight.bold);

  static TextStyle boldWhite(context) => const TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

  static TextStyle smallWhiteTxt(BuildContext context, {bool isHovered = false}) =>
      GoogleFonts.openSans(color: isHovered ? AppColors.secondaryAlterColor : Colors.white, fontSize: 13, fontWeight: FontWeight.bold);

  static TextStyle greyTxt(BuildContext context, {bool isHovered = false}) =>
      GoogleFonts.openSans(fontWeight: FontWeight.bold, color: isHovered ? AppColors.secondaryAlterColor : Colors.black54);
}
