import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sabitler {
  static const anaRenk = Colors.indigo;
  static String baslikText = "Ortalama Hesapla";
  static const baslikRengi = Color.fromARGB(255, 63, 81, 181);
  //font runtime anında çalışır const değil final tanımla
  static final TextStyle baslikStyle = GoogleFonts.quicksand(
    fontSize: 24,
    fontWeight: FontWeight.w900,
  );

  static BorderRadius borderRadius = BorderRadius.circular(24);

  static final TextStyle dersSayisiStyle = GoogleFonts.quicksand(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: anaRenk,
  );

  static final TextStyle ortalamaGosterBodyStyle = GoogleFonts.quicksand(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: anaRenk,
  );
  static final TextStyle ortalamaStyle = GoogleFonts.quicksand(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: anaRenk,
  );


  static final EdgeInsets dropDownPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 4,);
}
