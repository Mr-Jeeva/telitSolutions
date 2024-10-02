import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TxtStyle {

  static TextStyle boldBlack(context) => const TextStyle(color: Colors.black, fontWeight: FontWeight.bold);

  static TextStyle boldWhite(context) => const TextStyle(color: Colors.white, fontWeight: FontWeight.bold);

  static TextStyle smallWhiteTxt(context) =>  GoogleFonts.openSans(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold);
}
