import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:labstudios/constants/constants.dart';

class PixelatedBackgroundText extends StatelessWidget {
  final String text;
  const PixelatedBackgroundText({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: Text(this.text.toUpperCase(),
          style: GoogleFonts.vt323(fontSize: 450, color: AppColors.white)),
    );
  }
}
