import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({
    required this.image,
    required this.text,
    super.key,
  });

  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xff98b0b7), Color(0xffc2c8c5)]),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style:
                GoogleFonts.outfit(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Image.asset(
            image,
            height: 80,
          ),
        ],
      ),
    );
  }
}
