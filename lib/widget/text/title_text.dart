import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  TitleText({
    super.key,
    required this.text,
  });

  String text;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Text(
      text,
      textAlign: TextAlign.start,
      style: GoogleFonts.outfit(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
