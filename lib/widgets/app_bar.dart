import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Wander',
            style: GoogleFonts.sacramento(
              textStyle: const TextStyle(
                fontSize: 42,
              ),
            ),
          ),
          Text(
            'Log',
            style: GoogleFonts.monoton(
              textStyle: const TextStyle(fontSize: 22),
            ),
          )
        ],
      ),
    );
  }
}
