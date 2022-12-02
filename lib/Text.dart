import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFile extends StatelessWidget {
    final String text;
    final  double size;
    final weight;
    

   TextFile({
    required this.text,
    required this.size,
    required this.weight,

   });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        textStyle:  TextStyle(
          color: Colors.black,
          fontSize: size,
          fontWeight: weight
        ),
      ),
    );
  }
}