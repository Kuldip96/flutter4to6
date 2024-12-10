import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? weight;
  final Color? color;
  final VoidCallback? onPress;
  const AppText(
      {super.key, required this.text, this.weight, this.color, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: onPress == null
          ? Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: weight ?? 20,
                color: color ?? Colors.black,
              ),
            )
          : TextButton(
              onPressed: onPress,
              child: Text(
                text,
                style: GoogleFonts.poppins(
                  fontSize: weight ?? 20,
                  color: color ?? Colors.black,
                ),
              ),
            ),
    );
  }
}
