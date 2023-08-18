import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubTitleText extends StatelessWidget {
  SubTitleText({
    super.key,
    required this.text,
  });

  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: GoogleFonts.outfit(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),
    );
  }
}
